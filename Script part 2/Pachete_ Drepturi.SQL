CREATE OR REPLACE PACKAGE pachet_proiectBD AS

  TYPE t_ref_bonCasa IS REF CURSOR ;
  PROCEDURE p_PretMedPrep (CantitateNecesara_ substanta_preparat.CantitateNecesara%TYPE, PretSubstanta_ substante.Pret%TYPE, idpreparat_ substanta_preparat.idpreparat%TYPE);
  PROCEDURE p_PretMedicament (idmedicament_ medicament_bon.idmedicament%TYPE, CantitVanduta_ medicament_bon.cantitVanduta%TYPE, PretUnitar_ IN OUT medicament_bon.pretUnitar%TYPE);
  FUNCTION f_BonCasaFiltrat(data_initiala DATE, data_finala DATE) RETURN t_ref_bonCasa ;
  
END ;
----------------------------------------declar variabile pt pachetul proiectBD



CREATE OR REPLACE PACKAGE pachet_drepturi AS
	
	FUNCTION f_are_drepturi (user_ VARCHAR2, idpacient_ pacient.idpacient%TYPE, tip_editare CHAR) RETURN BOOLEAN ;

END pachet_drepturi ;

-----------------------------------------------
CREATE OR REPLACE PACKAGE BODY pachet_drepturi IS
FUNCTION f_are_drepturi (user_ VARCHAR2, idpacient_ pacient.idpacient%TYPE, tip_editare CHAR ) 
	RETURN BOOLEAN 
IS
	v_sir CHAR(1) ; 
BEGIN
	CASE 
	  WHEN tip_editare = 'I' THEN 	
  		SELECT drept_inserare INTO v_sir FROM drepturi
    		WHERE utilizator = user_ AND idpacient=idpacient_ ;
	  WHEN tip_editare = 'U' THEN 	
      SELECT drept_modificare INTO v_sir FROM drepturi
        WHERE utilizator = user_ AND idpacient=idpacient_ ;
	  WHEN tip_editare = 'D' THEN 	
  		SELECT drept_stergere INTO v_sir FROM drepturi
    		WHERE utilizator = user_ AND idpacient=idpacient_ ;
	END CASE ;
	RETURN CASE v_sir WHEN 'D' THEN TRUE ELSE FALSE END ;
EXCEPTION
	WHEN NO_DATA_FOUND THEN 
	RETURN FALSE ;
END ;

--------------------------------------------------------------------------
END pachet_drepturi ;

















--------------------------------------------------------

CREATE OR REPLACE PACKAGE BODY pachet_proiectBD AS
-----------------------------
PROCEDURE p_PretMedPrep (CantitateNecesara_ substanta_preparat.CantitateNecesara%TYPE, PretSubstanta_ substante.Pret%TYPE, idpreparat_ substanta_preparat.idpreparat%TYPE)
AS
  v_idMedPrep medicamente_preparate.idMedPrep%TYPE;
BEGIN
  select distinct mp.idMedPrep into v_idMedPrep from medicamente_preparate mp
    inner join preparat p on mp.idmedprep=p.idmedprep
    where p.idpreparat= idpreparat_ and p.idMedPrep=mp.idmedprep;
  UPDATE medicamente_preparate SET PretMedPrep = coalesce(pretMedPrep,0) + coalesce(cantitateNecesara_ * pretSubstanta_, 0)
    WHERE idmedprep = v_idMedPrep ;
END ;

-----------------------------

PROCEDURE p_pretMedicament (idmedicament_ medicament_bon.idmedicament%TYPE, CantitVanduta_ medicament_bon.cantitVanduta%TYPE, PretUnitar_ IN OUT medicament_bon.pretUnitar%TYPE)
AS
  v_exista NUMBER(1) ;
  v_stoc medicamente_achiz.stoc%TYPE;
  v_numeMedicament medicamente.numeMedicament%TYPE;
  v_pret medicamente_achiz.PretMedAchiz%TYPE;
  v_tipmedicament medicamente.tipMedicament%TYPE;
BEGIN
  select count(*) into v_exista from medicamente where idmedicament= idmedicament_;
  select tipmedicament into v_tipmedicament from medicamente where idmedicament= idmedicament_;
  if v_exista = 0 then
    RAISE_APPLICATION_ERROR (-20520, 'Nu achizitionam medicamentul solicitat.');  
  else
    if v_tipmedicament = 'A' then
      select stoc into v_stoc from medicamente_achiz where idmedachiz= idmedicament_;
      select numeMedicament into v_numeMedicament from medicamente where idmedicament= idmedicament_;
      case
        when v_stoc > 0 and v_stoc < cantitVanduta_ then
          RAISE_APPLICATION_ERROR (-20520, 'Stocul pentru medicamentul ' || v_numeMedicament || ' este de numai ' || v_stoc || '. ' ||
                                           'Ati solicitat cantitatea de ' || cantitVanduta_ || '. ' ||
                                           'Nu va putem onora cererea pentru medicamentul ' || v_numeMedicament);
        when v_stoc = 0 then
          RAISE_APPLICATION_ERROR (-20520, 'Nu mai avem medicamentul ' || v_numeMedicament || ' in stoc.');
        when v_stoc >= cantitVanduta_ then
          select PretMedAchiz into v_pret from medicamente_achiz where idMedAchiz= idmedicament_;
          pretUnitar_ := coalesce(v_pret,0);
          UPDATE medicamente_achiz SET stoc = stoc - CantitVanduta_ where idMedAchiz= idmedicament_;
      end case;
    else -- v_tipmedicament = 'P'
      select p.denpreparat into v_numeMedicament from medicamente_preparate mp
        inner join preparat p on mp.idmedprep=p.idmedprep
        where mp.idmedprep= idmedicament_;
      select p.stoccurent into v_stoc from medicamente_preparate mp
        inner join preparat p on mp.idmedprep=p.idmedprep
        where mp.idmedprep= idmedicament_;
      case
        when v_stoc > 0 and v_stoc < cantitVanduta_ then
          RAISE_APPLICATION_ERROR (-20520, 'Stocul pentru medicamentul ' || v_numeMedicament || ' este de numai ' || v_stoc || '. ' ||
                                           'Ati solicitat cantitatea de ' || cantitVanduta_ || '. ' ||
                                           ' Nu va putem onora cererea pentru medicamentul ' || v_numeMedicament);
        when v_stoc = 0 then
          RAISE_APPLICATION_ERROR (-20520, 'Nu mai avem medicamentul ' || v_numeMedicament || ' in stoc.');
        when v_stoc >= cantitVanduta_ then
          select PretMedPrep into v_pret from medicamente_preparate where idMedPrep= idmedicament_;
          pretUnitar_ := coalesce(v_pret,0);
          UPDATE preparat SET stoccurent = stocCurent - CantitVanduta_ where idMedPrep= idmedicament_;
      end case;    
    end if; -- de la v_tipmedicament = 'A'
  end if; -- de la v_exista = 0
END;
-----------------------------

FUNCTION f_BonCasaFiltrat(data_initiala DATE, data_finala DATE) RETURN t_ref_bonCasa
AS
  set_of_bonCasa t_ref_bonCasa;
BEGIN 
  OPEN set_of_bonCasa FOR SELECT * FROM bon_casa WHERE dataBon BETWEEN data_initiala AND data_finala ;
  RETURN set_of_bonCasa;
END;

-----------------------------

END; -- sfirsit pachet









--=====================================================================================
-- pachetul pachet_inchideri
CREATE OR REPLACE PACKAGE pachet_inchid IS
	v_ultima_zi_interzisa DATE := NULL ;
	PROCEDURE p_inchid ;
END pachet_inchid;

-----------------------------------------------
CREATE OR REPLACE PACKAGE BODY pachet_inchid IS
-----------------------------------------------
PROCEDURE p_inchid
IS
BEGIN 
	SELECT LAST_DAY(TO_DATE('01/'||luna||'/'||an, 'dd/mm/yyyy'))
	INTO  v_ultima_zi_interzisa
	FROM INCHIDERI
	WHERE TO_DATE('01/'||luna||'/'||an, 'dd/mm/yyyy') = 
		(SELECT MAX(TO_DATE('01/'||luna||'/'||an, 'dd/mm/yyyy'))
		 FROM INCHIDERI ) ;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		v_ultima_zi_interzisa := DATE'2016-01-01' ;
END p_inchid ;
--------------------------------------------------------------------------
END pachet_inchid ;
