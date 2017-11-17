-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgBonCasaInsBefoRow
BEFORE INSERT ON bon_casa
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
	IF :NEW.databon <= pachet_inchid.v_ultima_zi_interzisa THEN 
		RAISE_APPLICATION_ERROR(-20560, 'Luna inchisa !') ;
	END IF ;
	IF :NEW.databon > ADD_MONTHS (pachet_inchid.v_ultima_zi_interzisa, 14) THEN 
		RAISE_APPLICATION_ERROR(-20561, 'Nu puteti insera bonul de casa pina nu inchideti 14 luni anterioare! :D') ;
	END IF ;
  SELECT seq_idboncasa.NEXTVAL INTO :NEW.idboncasa FROM dual ;
-- adaug in jurnal
  INSERT INTO jurnal (tabela, tip_actualizare, vechea_inegistrare, noua_inregistrare) 
		VALUES ('BON_CASA', 'I', NULL, 'idBonCasa:'|| :NEW.idbonCasa ||', DataBon:'|| 
      			TO_CHAR(:NEW.DataBon, 'DD-MM-YYYY HH24:MI:SS') ||
            ', SumaReducere:'|| :NEW.SumaReducere || ', SumaTotala:'|| :NEW.SumaTotala );
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgBonCasaUpd
AFTER UPDATE ON bon_casa
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
-- adaug in jurnal 
	INSERT INTO jurnal (tabela, tip_actualizare, vechea_inegistrare, noua_inregistrare) 
		VALUES ('BON_CASA', 'I',
            'idBonCasa:'|| :OLD.idbonCasa ||', DataBon:'|| 
      			TO_CHAR(:OLD.DataBon, 'DD-MM-YYYY HH24:MI:SS') ||
            ', SumaReducere:'|| :OLD.SumaReducere || ', SumaTotala:'|| :OLD.SumaTotala,
            'idBonCasa:'|| :NEW.idbonCasa ||', DataBon:'|| 
      			TO_CHAR(:NEW.DataBon, 'DD-MM-YYYY HH24:MI:SS') ||
            ', SumaReducere:'|| :NEW.SumaReducere || ', SumaTotala:'|| :NEW.SumaTotala );
END ;

-------------------------------------------------


CREATE OR REPLACE TRIGGER TrgRetetaInsBefoRow
BEFORE INSERT ON reteta
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
  v_idGrupaBoala grupa_boala.idgrupaboala%TYPE;
  v_procent categorii_socioProfesionale.procent%TYPE;
  v_tipreducere reducere.tipReducere%TYPE;
  v_numeprenume pacient.numeprenume%TYPE;
BEGIN
	-- verific daca USER-ul are voie sa preia retete pentru pacientul :NEW.idpacient
	IF pachet_drepturi.f_are_drepturi (USER, :NEW.idpacient, 'I') THEN
      -- ca sa nu primeasca valori initiale accidentale
      :NEW.validare := 'N' ;
      SELECT seq_idReteta.NEXTVAL INTO :NEW.idReteta FROM dual ;
      select tipReducere into v_tipreducere from reducere where idreducere = :NEW.idreducere;
      if v_tipreducere = 'S' then
          select gb.idgrupaBoala into v_idGrupaBoala from grupa_boala gb
            inner join boala b on gb.idgrupaBoala = b.idgrupaBoala
            where b.idboala = :NEW.idboala;
          select procent into v_procent from reducere r
            inner join categorii_socioProfesionale csp on r.idreducere = csp.idCategSocioProf
            where idreducere = :NEW.idreducere;
          INSERT INTO reducere_procent (idgrupaboala, idpacient, idreducere, procentReducere)
            VALUES (v_idGrupaBoala, :NEW.idpacient, :NEW.idreducere, v_procent);
      end if;
	ELSE
    select numeprenume into v_numeprenume from pacient where idpacient = :NEW.idpacient;
		RAISE_APPLICATION_ERROR (-20572, ' Utilizatorul ' || user || ' nu are dreptul sa insereze retete pentru pacientul ' || v_numeprenume);
	END IF ;
END ;

-------------------------------------------------
-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgMedicamenteRetetaInsBefoRow
BEFORE INSERT ON medicamente_reteta
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
  v_exista NUMBER(1) ;
  v_pretRedus reducere_categ_medicamente.pretRedus%TYPE;
  v_procentReducere reducere_procent.procentReducere%TYPE;
  v_validare CHAR(1);
BEGIN
  -- verific daca reteta nu e validata. Daca da, nu pot insera in medicamente_reteta.
  select validare into v_validare from reteta where idreteta= :NEW.idreteta;
  if v_validare = 'D' THEN
    RAISE_APPLICATION_ERROR (-20491, 'NU puteti insera medicamente in reteta pentru ca reteta este validata.' ) ;
  else
    -- calculez Medicamente_Reteta.SumaMedicament
    -- actualizez MedicamenteAchiz.Stoc sau Preparat.StocCurent
      pachet_proiectBD.p_PretMedicament(:NEW.idmedicament, :NEW.CantitatePrescrisa, :NEW.SumaMedicament);
    -- calculez Medicamente_Reteta.SumaReducere
      select count(*) into v_exista from reducere red
        inner join categorii_medicamente cm on red.idreducere=cm.idcategmedicamente
        inner join reducere_categ_medicamente rcm on cm.idcategMedicamente=rcm.idcategMedicamente
        inner join reteta r on red.idreducere=r.idreducere
        where rcm.idmedicament = :NEW.idmedicament;
      if v_exista>0 then
        select distinct pretRedus into v_pretRedus from reducere red
          inner join categorii_medicamente cm on red.idreducere=cm.idcategmedicamente
          inner join reducere_categ_medicamente rcm on cm.idcategMedicamente=rcm.idcategMedicamente
          inner join reteta r on red.idreducere=r.idreducere
          where rcm.idmedicament = :NEW.idmedicament;
      else
        v_pretRedus := 0;
      end if;
      select count(*) into v_exista from reducere red
        inner join reducere_procent rp on red.idreducere = rp.idreducere
        inner join reteta r on red.idreducere = r.idreducere
        inner join boala b on r.idboala = b.idboala
        inner join grupa_boala gb on gb.idgrupaBoala = b.idgrupaboala
        where r.idreteta = :NEW.idreteta;
      if v_exista > 0 then
        select distinct procentReducere into v_procentReducere from reducere red
          inner join reducere_procent rp on red.idreducere = rp.idreducere
          inner join reteta r on red.idreducere = r.idreducere
          inner join boala b on r.idboala = b.idboala
          inner join grupa_boala gb on gb.idgrupaBoala = b.idgrupaboala
          where r.idreteta = :NEW.idreteta;
      else
        v_procentReducere := 0;
      end if;
      :NEW.SumaReducere := :NEW.sumaMedicament - round((:NEW.sumaMedicament - v_pretRedus) * (100 - v_procentReducere)/100, 2);
  end if;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgRedCategMedInsBefoRow
BEFORE INSERT ON Reducere_categ_medicamente
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
  v_procent categorii_medicamente.procent%TYPE;
  v_pret medicamente_achiz.pretMedAchiz%TYPE;
  v_pretredus reducere_categ_medicamente.pretRedus%TYPE;
  v_tip medicamente.tipMedicament%TYPE;
BEGIN
  select procent into v_procent from categorii_medicamente where idCategMedicamente =:NEW.idCategMedicamente;
  select tipMedicament into v_tip from medicamente where idmedicament = :NEW.idmedicament;
  case
    when v_tip = 'A' then
      select pretMedAchiz into v_pret from medicamente_achiz where idmedachiz = :NEW.idmedicament;
    when v_tip = 'P' then
      select pretMedPrep into v_pret from medicamente_preparate where idmedprep = :NEW.idmedicament;
  end case;
  :NEW.pretRedus := round(v_pret * v_procent/100, 2);  
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgSubstantaPreparatInsBefoRow
BEFORE INSERT ON substanta_preparat
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
  v_pretSubstanta substante.pret%TYPE;
BEGIN
  select coalesce(pret, 0) into v_pretSubstanta from substante where idsubstanta= :NEW.idsubstanta;
  pachet_proiectBD.p_PretMedPrep(:NEW.CantitateNecesara, v_pretsubstanta, :NEW.idpreparat);
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgBonRetetaInsBefoRow
BEFORE INSERT ON bon_reteta
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
  v_sumaMedicament bon_reteta.suma%TYPE;
  v_sumaReducere bon_reteta.sumaReducere%TYPE;
BEGIN
  select sum(sumamedicament) into v_sumaMedicament from medicamente_reteta where idreteta = :NEW.idreteta;
  select sum(sumaReducere) into v_sumaReducere from medicamente_reteta where idreteta = :NEW.idreteta;
  :NEW.suma := v_sumaMedicament;
  :NEW.sumaReducere := v_sumaReducere;
  update bon_casa set sumaReducere = coalesce(sumaReducere, 0) + :NEW.sumaReducere where idboncasa = :NEW.idboncasa;
  update bon_casa set sumaTotala = coalesce(sumaTotala, 0) + (:NEW.suma - :NEW.sumaReducere) where idboncasa = :NEW.idboncasa;
END;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgMedicamentBonInsBefoRow
BEFORE INSERT ON medicament_bon
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
  v_suma bon_card_fidelitate.suma%TYPE;
  v_sumaReducere bon_card_fidelitate.sumaReducere%TYPE;
  v_sumaTotala bon_casa.sumaTotala%TYPE;
  v_procent categ_fidelitate.procent%TYPE;
  v_existaBon NUMBER(5);
  v_existaProcent NUMBER(2);
BEGIN
  pachet_proiectBD.p_PretMedicament(:NEW.idmedicament, :NEW.CantitVanduta, :NEW.PretUnitar);
  v_suma := :NEW.cantitVanduta * :NEW.pretUnitar;
  select count(*) into v_existaProcent from categ_fidelitate cat
    inner join card_fidelitate cf on cat.idcategFidelitate=cf.idcategFidelitate
    where idcardFidelitate = :NEW.idcardFidelitate;
  if v_existaProcent > 0 then
    select distinct procent into v_procent from card_fidelitate cf
     inner join categ_fidelitate cat on cat.idcategFidelitate=cf.idcategFidelitate
     where cf.idcardFidelitate = :NEW.idcardFidelitate;
 else
    v_procent := 0;
 end if;
  v_sumaReducere := round(v_suma *  v_procent, 2);
  select count(*) into v_existabon from bon_card_fidelitate where idbonCasa= :NEW.idbonCasa;
  if v_existaBon = 0 then
    insert into bon_card_fidelitate values (:NEW.idbonCasa, :NEW.idcardFidelitate, v_suma, v_sumaReducere);
  else
    update bon_card_fidelitate set suma = coalesce(suma, 0) + v_suma where idbonCasa= :NEW.idbonCasa;
    update bon_card_fidelitate set sumaReducere = coalesce(sumaReducere, 0) + v_sumaReducere where idbonCasa= :NEW.idbonCasa;
  end if;
  update bon_casa set sumaReducere = coalesce(sumaReducere, 0) + v_sumaReducere where idbonCasa= :NEW.idbonCasa;
  update bon_casa set sumaTotala = coalesce(sumaTotala, 0) + (v_suma - v_sumaReducere) where idbonCasa= :NEW.idbonCasa;
END;

-------------------------------------------------
-- triggere pt. interzicerea accesului la modificarea campurilor calculate
-------------------------------------------------
CREATE OR REPLACE TRIGGER trgReducereProcUpd 
    BEFORE UPDATE ON reducere_procent FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR (-20491, 'NU puteti modifica datele in tabela REDUCERE_PROCENT! Acestea se actualizeaza automat.' ) ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER trgMedicamenteRetetaUpd 
    BEFORE UPDATE OF sumaMedicament, sumaReducere ON medicamente_reteta FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR (-20491, 'NU puteti modifica atributele SumaMedicament si SumaReducere din tabela MEDICAMENTE-RETETA! Acestea se actualizeaza automat.' ) ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER trgMedicamentBonUpd 
    BEFORE UPDATE OF pretUnitar ON medicament_bon FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR (-20491, 'NU puteti modifica atributul PretUnitar din tabela MEDICAMENT-BON! Acestea se actualizeaza automat.' ) ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER trgBonRetetaUpd 
    BEFORE UPDATE OF suma, sumaReducere ON bon_reteta FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR (-20491, 'NU puteti modifica atributele Suma si SumaReducere din tabela BON-RETETA! Acestea se actualizeaza automat.' ) ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER trgBonCardFidUpd 
    BEFORE UPDATE OF suma, sumaReducere ON bon_card_fidelitate FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR (-20491, 'NU puteti modifica atributele Suma si SumaReducere din tabela BON-ARD-FIDELITATE! Acestea se actualizeaza automat.' ) ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER trgRedCatMedUpd 
    BEFORE UPDATE OF pretRedus ON reducere_categ_medicamente FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR (-20491, 'NU puteti modifica atributul PretRedus din tabela REDUCERE_CATEG_MEDICAMENTE! Acestea se actualizeaza automat.' ) ;
END ;

-------------------------------------------------
-------------------------------------------------
-- trigger de interzicere a modificarii valorilor atributelor care se adauga in Reteta cu INSERT pentru retetele validate
CREATE OR REPLACE TRIGGER trgReteteValidareUpdBr 
    BEFORE UPDATE OF idpacient, idboala, idmedic, idreducere, dataEliberarii, dataIncheierii
      ON reteta FOR EACH ROW
BEGIN
	IF :OLD.Validare = 'D' THEN
    RAISE_APPLICATION_ERROR (-20491, 'Reteta este validata. NU puteti modifica datele!' ) ;
  END IF ;
END ;

-------------------------------------------------
-- triggere pt inchidere
-------------------------------------------------
-- de inserare
CREATE OR REPLACE TRIGGER trg_inchideri_ins_br
	BEFORE INSERT ON inchideri FOR EACH ROW
BEGIN 
	:NEW.operator := USER ;
	:NEW.datainchiderii := CURRENT_DATE ;
	IF pachet_inchid.v_ultima_zi_interzisa = DATE'2016-01-01' THEN
		null ; -- e prima luna pentru care se face inchiderea
	ELSE 
		IF ADD_MONTHS (pachet_inchid.v_ultima_zi_interzisa, 1) <> 
			LAST_DAY(TO_DATE('01/'||:NEW.luna||'/'||:NEW.an, 'dd/mm/yyyy')) THEN
	    		RAISE_APPLICATION_ERROR(-20556, 'Lunile trebuie inchise consecutiv !') ;
		END IF ;
	END IF;
	pachet_inchid.v_ultima_zi_interzisa := LAST_DAY(TO_DATE('01/'||:NEW.luna||'/'||:NEW.an, 'dd/mm/yyyy')) ;		
END ;

-----------------------------------------------
-- de modificare - interzicere
CREATE OR REPLACE TRIGGER trg_inchideri_upd_br
	BEFORE UPDATE ON inchideri FOR EACH ROW
BEGIN 
	RAISE_APPLICATION_ERROR(-20557, 'In tabela INCHIDERI pot fi facute doar inserari si stergeri !')  ;
END ;

-----------------------------------------------
-- de stergere
CREATE OR REPLACE TRIGGER trg_inchideri_del_br
	BEFORE DELETE ON inchideri FOR EACH ROW
BEGIN 
	IF pachet_inchid.v_ultima_zi_interzisa <> 
		LAST_DAY(TO_DATE('01/'||:OLD.luna||'/'||:OLD.an, 'dd/mm/yyyy')) THEN
    		RAISE_APPLICATION_ERROR(-20558, 'Nu puteti sterge decit ultima luna inchisa !') ;	
	END IF;
END ;

-------------------------------------------------
-- declansatoarele tabelei Jurnal - se interzic modificarea si stergerea
-------------------------------------------------
CREATE OR REPLACE TRIGGER trg_jurnal_ins_br
	BEFORE INSERT ON jurnal FOR EACH ROW
BEGIN
	SELECT seq_idactualizare.NextVal INTO :NEW.IdActualizare FROM dual ;
	:NEW.dataora := CURRENT_TIMESTAMP ;
	:NEW.operator := USER ;
END;

-------------------------------------------------
CREATE OR REPLACE TRIGGER trg_jurnal_upd_del_br
	BEFORE UPDATE OR DELETE ON jurnal FOR EACH ROW
BEGIN 
	RAISE_APPLICATION_ERROR(-20657, 'In tabela JURNAL pot fi facute doar inserari !')  ;
END ;

-------------------------------------------------