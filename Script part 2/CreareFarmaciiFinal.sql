CREATE TABLE farmacii (	
	IdFarmacie NUMBER(7) PRIMARY KEY,
	NumeFarmacie VARCHAR2(50) NOT NULL,
	AdresaFarmacie VARCHAR2(100),
	Gestionar VARCHAR(30),
	Judet VARCHAR(10),
	Telefon VARCHAR2(12)
	) ;
  
CREATE TABLE plafon_retete (
 IdFarmacie NUMBER(7) REFERENCES farmacii(IdFarmacie),
 Luna NUMBER(2) NOT NULL CONSTRAINT ck_Luna CHECK (Luna >= 1 and luna <= 12),
 An NUMBER(4) NOT NULL CONSTRAINT ck_an CHECK (an >= 2010),
 SumaPlafon NUMBER(14,2),
 PRIMARY KEY (IdFarmacie, an, luna)
); 

CREATE TABLE furnizori (	
	IdFurnizor NUMBER(7) PRIMARY KEY,
	NumeFurnizor VARCHAR2(50) NOT NULL,
	PersoanaContact VARCHAR2(30),
	Localitate VARCHAR2(30),
	CodFiscal VARCHAR(20),
	Telefon VARCHAR2(12),
	Email VARCHAR2(50)
	) ;

CREATE TABLE comenzi_farmacie (
	IdComandaFarmacie NUMBER(12) PRIMARY KEY,
  IdFarmacie NUMBER(7) NOT NULL REFERENCES farmacii (IdFarmacie),
  ValoareComanda NUMBER(12,2)  NOT NULL ,
	DataComanda DATE DEFAULT CURRENT_DATE,
	ObsComanda VARCHAR2(30)	,
  comandaPreluata CHAR(1) DEFAULT 'N' CHECK (comandaPreluata IN ('D', 'N'))
	) ;
	
CREATE TABLE comenzi_finale (
	IdComandaFinala NUMBER(12) PRIMARY KEY,
  IdFurnizor NUMBER(7) NOT NULL REFERENCES furnizori (IdFurnizor),
  ValoareComandaFinala NUMBER(12,2)  NOT NULL ,
	DataComandaFinala DATE DEFAULT CURRENT_DATE,
	ObsComandaFinala VARCHAR2(30)	
	) ;

CREATE TABLE facturi (
	IdFactura NUMBER(10) PRIMARY KEY,
	NrFactura NUMBER(8) NOT NULL,
	DataFact DATE DEFAULT CURRENT_DATE,
	ValoareFactura NUMBER(12,2),
	TVAFactura NUMBER(11,2) DEFAULT .19,
	IdComandaFinala NUMBER(12) NOT NULL REFERENCES comenzi_finale (IdComandaFinala),
  TotalIncasat NUMBER(11,2)
	);

CREATE TABLE achitare (
	IdAchitareF NUMBER(10) PRIMARY KEY,
	SerieDoc NUMBER(8) NOT NULL,
	DataAchitare DATE DEFAULT CURRENT_DATE
	);

CREATE TABLE achitare_transe (
  IdFactura NUMBER(10) NOT NULL REFERENCES facturi (IdFactura),
	IdAchitareF NUMBER(10) NOT NULL REFERENCES achitare (IdAchitareF),
	Transa NUMBER(12,2),
  PRIMARY KEY (IdFactura, IdAchitareF)
	);
  
CREATE TABLE aviz_insotire (
	IdAvizInsotire NUMBER(10) PRIMARY KEY,
	DataAvizInsotire DATE DEFAULT CURRENT_DATE,
	ValoareAvizInsotire NUMBER(12,2),
	TVAavizInsotire NUMBER(11,2) DEFAULT .19,
  IdComandaFarmacie NUMBER(12) NOT NULL REFERENCES comenzi_farmacie (IdComandaFarmacie)
	);

CREATE TABLE medicamente (
	IdMedicament NUMBER(10) PRIMARY KEY,
  NumeMedicament VARCHAR2 (20),
	ObsMedicament VARCHAR2 (50),
  Prescris VARCHAR2(2) DEFAULT 'NU' CONSTRAINT nn_Prescris NOT NULL
        CONSTRAINT ck_Prescris CHECK (Prescris IN ('DA', 'NU')),
  TipMedicament CHAR(1) DEFAULT 'A' CONSTRAINT ck_tipMed CHECK (tipMedicament in ('A', 'P'))
  ) ;
  
CREATE TABLE medicamente_achiz (
	IdMedAchiz NUMBER(10) PRIMARY KEY REFERENCES medicamente (IdMedicament), 
  UMmedAchiz VARCHAR2(10),
  ConcentratieMedAchiz VARCHAR2(10),
  Stoc NUMBER(8),
  CompozitieMedAchiz VARCHAR2(60),
  DataExpir DATE,
  PretMedAchiz NUMBER(12,2)
	) ;

CREATE TABLE medicamente_preparate (
	IdMedPrep NUMBER(10) PRIMARY KEY REFERENCES medicamente (IdMedicament),
  DataExpir DATE,
  DataFabr DATE DEFAULT CURRENT_DATE,
  PretMedPrep NUMBER(12,2) 
	) ;

CREATE TABLE substante (
	IdSubstanta NUMBER(10) PRIMARY KEY,
	DenSubstanta VARCHAR2(30),
  UM VARCHAR2(10),
	ObsSubstanta VARCHAR2 (50),
  Pret NUMBER(12,2)
	) ; 

CREATE TABLE preparat (
	IdPreparat NUMBER(10) PRIMARY KEY,
  IdMedPrep NUMBER(10) NOT NULL REFERENCES medicamente_preparate(IdMedPrep),
	DenPreparat VARCHAR2(30),
  UM VARCHAR2(10),
  Concentratie VARCHAR2(10),
  StocCurent NUMBER(8)
	) ; 

CREATE TABLE Substanta_Preparat (
    IdSubstanta NUMBER(8)
      CONSTRAINT fk_SubstantaPreparat_Substante REFERENCES Substante(IdSubstanta),
    IdPreparat NUMBER(8)
      CONSTRAINT fk_SubstantaPreparat_Preparat REFERENCES Preparat(IdPreparat),
    CantitateNecesara NUMBER(10,2),
    UM VARCHAR2 (10),
    CONSTRAINT pk_SubstantaPreparat PRIMARY KEY (IdPreparat, IdSubstanta)
    ) 
 ;
 
 CREATE TABLE Lot (
    IdLot NUMBER(8)
      CONSTRAINT pk_Lot PRIMARY KEY
      CONSTRAINT ck_IdLot CHECK (IdLot > 0)
      CONSTRAINT nn_IdLot NOT NULL,
    IdMedicament NUMBER (10)
      CONSTRAINT fk_Lot_Medicamente REFERENCES Medicamente(IdMedicament),
    DataFabricatie DATE
       CONSTRAINT ck_DataFabricatie CHECK (DataFabricatie >= TO_DATE('01/01/2007','DD/MM/YYYY')),
    DataExpirarii DATE,
    Observatii VARCHAR2(40) 
    )
  ;
  
CREATE TABLE Cantitate_Lot (
    IdAvizInsotire NUMBER (8) 
      CONSTRAINT fk_CantitateLot_AvizInsotire REFERENCES Aviz_Insotire(IdAvizInsotire),
    IdLot NUMBER(8)
      CONSTRAINT fk_CantitateLot_Lot REFERENCES Lot(IdLot),
    CantitateReceptionata NUMBER (12,2)
      CONSTRAINT ck_CantitateReceptionata CHECK (CantitateReceptionata > 0),
    CONSTRAINT pk_cantitatelot PRIMARY KEY (IdAvizInsotire, IdLot)
    )
  ;

CREATE TABLE Comanda_Finala_Medicament (
    IdMedicament NUMBER(10) REFERENCES Medicamente(IdMedicament),
    IdComandaFinala NUMBER(8) REFERENCES Comenzi_Finale(IdComandaFinala),
    CantitateComandataFinala NUMBER(12,2)
        CONSTRAINT ck_CantitateComandataFinala CHECK (CantitateComandataFinala >= 0),
    PretUnitar NUMBER(12,2)
    )
;

CREATE TABLE Grupa_Boala (
    IdGrupaBoala NUMBER(8) 
      CONSTRAINT pk_GrupaBoala PRIMARY KEY
      CONSTRAINT ck_IdGrupaBoala CHECK (IdGrupaBoala > 0)
      CONSTRAINT nn_IdGrupaBoala NOT NULL,
    DenumireGrupa VARCHAR2 (40)
      CONSTRAINT ck_DenumireGrupa_GrupaBoala CHECK (SUBSTR(DenumireGrupa,1,1) = UPPER(SUBSTR(DenumireGrupa,1,1))),
    ObservatiiGrupa VARCHAR2 (40), 
    Prioritate NUMBER(2)
    )
;
  
CREATE TABLE Boala (
    IdBoala NUMBER(8)
      CONSTRAINT pk_Boala PRIMARY KEY
      CONSTRAINT ck_IdBoala CHECK (IdBoala > 0)
      CONSTRAINT nn_IdBoala NOT NULL,
    NumeBoala VARCHAR2(40) NOT NULL
      CONSTRAINT ck_NumeBoala_Boala CHECK (SUBSTR(NumeBoala,1,1) = UPPER(SUBSTR(NumeBoala,1,1))),
    ObservatiiBoala VARCHAR2 (40),
    IdGrupaBoala NUMBER(6)
      CONSTRAINT fk_Boala_GrupaBoala REFERENCES Grupa_Boala(IdGrupaBoala)
    )
;
  
CREATE TABLE Medic (
    IdMedic NUMBER(8)
      CONSTRAINT pk_Medic PRIMARY KEY
      CONSTRAINT ck_IdMedic CHECK (IdMedic > 0)
      CONSTRAINT nn_IdMedic NOT NULL,
    Nume VARCHAR2(40)
      CONSTRAINT ck_Nume_Medic CHECK (SUBSTR(Nume,1,1) = UPPER(SUBSTR(Nume,1,1))),
    Specializare VARCHAR2(35),
    Adresa VARCHAR2(40),
    Localitate VARCHAR2 (25),
    Telefon VARCHAR2 (10)
    )
;
    
CREATE TABLE Reducere (
    IdReducere NUMBER(8)
      CONSTRAINT pk_Reducere PRIMARY KEY
      CONSTRAINT ck_IdReducere CHECK (IdReducere > 0)
      CONSTRAINT nn_IdReducere NOT NULL,
    DenumireReducere VARCHAR2(25),
    TipReducere CHAR(1) DEFAULT 'M' CONSTRAINT ck_tipRed CHECK (tipReducere in ('M', 'S'))
    )
;
  
CREATE TABLE Categorii_Medicamente (
    IdCategMedicamente NUMBER(8)
      CONSTRAINT pk_CategMedicamente PRIMARY KEY
      CONSTRAINT fk_CategMedicamente_Reducere REFERENCES Reducere(IdReducere)
      CONSTRAINT ck_IdCategMedicamente CHECK (IdCategMedicamente > 0)
      CONSTRAINT nn_IdCategMedicamente NOT NULL,
    Procent NUMBER (4,2),
    Observatii VARCHAR2(40)
    )
;
  
CREATE TABLE Categorii_SocioProfesionale (
    IdCategSocioProf NUMBER(8)
      CONSTRAINT pk_C PRIMARY KEY
      CONSTRAINT fk_CategSocio REFERENCES Reducere(IdReducere)
      CONSTRAINT ck_IdCategsocio CHECK (IdCategSocioProf > 0),
    Procent NUMBER (4,2),
    Observatii VARCHAR2(40)
    )
;
  
CREATE TABLE Pacient (
  IdPacient NUMBER(8)
    CONSTRAINT pk_pacient PRIMARY KEY
    CONSTRAINT ck_Idpacient CHECK (IdPacient > 0)
    CONSTRAINT nn_IdPacient NOT NULL,
  NumePrenume VARCHAR2(40),
  DataNasterii DATE,
  CNP VARCHAR2(14),
  Judet VARCHAR2(20),
  Statut VARCHAR2 (15)
  )
;
 
CREATE TABLE Reteta (
    IdReteta NUMBER (8)
      CONSTRAINT pk_Reteta PRIMARY KEY
      CONSTRAINT ck_IdReteta CHECK (IdReteta > 0)
      CONSTRAINT nn_IdReteta NOT NULL,
    DataEliberarii DATE,
    DataIncheierii DATE DEFAULT CURRENT_DATE,
    IdBoala NUMBER(8) CONSTRAINT fk_Reteta_Boala REFERENCES Boala(IdBoala),
    IdMedic NUMBER(8) CONSTRAINT fk_Reteta_Medic REFERENCES Medic(IdMedic),
    IdReducere NUMBER(8) CONSTRAINT fk_Reteta_Reducere REFERENCES Reducere(IdReducere),
    IdPacient NUMBER(8) CONSTRAINT fk_Reteta_Pacienti REFERENCES Pacient(idpacient),
    validare CHAR(1) DEFAULT 'N' CONSTRAINT ck_validare_reteta CHECK (validare IN ('D', 'N'))
    )
;
  
CREATE TABLE Medicamente_Reteta (
    IdMedicament NUMBER(10)
      CONSTRAINT fk_medicreteta REFERENCES Medicamente(IdMedicament),
    IdReteta NUMBER (8)
      CONSTRAINT fk_retetamedic REFERENCES Reteta(IdReteta),
    UM VARCHAR2(10),
    CantitatePrescrisa NUMBER (8,2),
    Prescriptie VARCHAR2(50),
    SumaMedicament NUMBER(12,2),
    SumaReducere NUMBER(12,2),
    CONSTRAINT pk_medicreteta PRIMARY KEY (IdReteta, IdMedicament)
    )
;
  
CREATE TABLE reducere_categ_medicamente (
	idmedicament NUMBER(5) CONSTRAINT fk_medcreducere REFERENCES medicamente(idmedicament) ,
 	idcategmedicamente NUMBER(5) CONSTRAINT fk_medireducere REFERENCES categorii_medicamente(idcategmedicamente) ,
	pretredus NUMBER (12,2),
  CONSTRAINT pk_reducere_medicamente PRIMARY KEY (idmedicament, idcategmedicamente)
	)
;

CREATE TABLE categ_fidelitate (
	idcategfidelitate NUMBER(5) PRIMARY KEY,
	denumire VARCHAR2 (35),
	procent NUMBER(2,2)
	)
;
 
CREATE TABLE card_fidelitate (
    idCardFidelitate NUMBER(5)
        CONSTRAINT pk_card_fidelitate PRIMARY KEY,
    IdPacient NUMBER(8) REFERENCES pacient(IdPacient),
    IdCategfidelitate NUMBER(5) REFERENCES categ_fidelitate(IdCategFidelitate),
    DataInreg DATE DEFAULT CURRENT_DATE,
    ValCump NUMBER(10,2),
    DataExp DATE
    ) 
 ;

CREATE TABLE receptie_medicam_furniz (
	idmedicament NUMBER(5) CONSTRAINT fk_medicfurnizor REFERENCES medicamente(idmedicament) ,
  idfactura NUMBER(5) CONSTRAINT fk_facturafurnizor REFERENCES facturi(idfactura) ,
	cantitreceptionata NUMBER(6),
	pret NUMBER(10,2),
	CONSTRAINT pk_receptie PRIMARY KEY (idfactura, idmedicament)
	)
;

CREATE TABLE reducere_procent (
--	idmedicament NUMBER(5) CONSTRAINT fk_medicprocent REFERENCES medicamente(idmedicament) ,
  idgrupaboala NUMBER(5) CONSTRAINT fk_grupareducere REFERENCES grupa_boala(idgrupaboala) ,
	idpacient NUMBER(5) CONSTRAINT fk_pacient_reducere_procent REFERENCES pacient(idpacient) ,
  IdReducere NUMBER(5) REFERENCES Reducere(IdReducere) ,
	ProcentReducere NUMBER (4,2) NOT NULL,
    	CONSTRAINT pk_reducere_procent PRIMARY KEY (idgrupaboala, idpacient, idreducere)
--	CONSTRAINT pk_reducere_procent PRIMARY KEY (idmedicament, idgrupaboala, idpacient, idreducere)
	)
;

CREATE TABLE Retur (
	idReturMedicament NUMBER(5)	CONSTRAINT pk_retur PRIMARY KEY,
  dataretur date
	)
;

CREATE TABLE retur_lot (
	idreturmedicament NUMBER(5) CONSTRAINT fkRetur_ReturLot REFERENCES retur(idreturmedicament) ,
	IdComandaFarmacie NUMBER(12) CONSTRAINT fkReturLotCdaFarm REFERENCES Comenzi_farmacie(idcomandafarmacie) ,
  idlot NUMBER(5) CONSTRAINT fk_lot_retur_lot REFERENCES lot(idlot) ,
	cantitatereturnata NUMBER (6),
	motivreturnare VARCHAR2 (30)
	)
;

CREATE TABLE bon_casa (
	idboncasa NUMBER(5) CONSTRAINT pk_boncasa PRIMARY KEY,
	Databon DATE DEFAULT CURRENT_DATE,
	sumareducere NUMBER(12,2),
	sumatotala NUMBER(12,2),
  IdFarmacie NUMBER(7) NOT NULL REFERENCES farmacii (IdFarmacie)
--  existaBonReteta NUMBER(1);
--  existaBonCard NUMBER(1);
	)
;	

CREATE TABLE bon_card_fidelitate (
  idBonCasa NUMBER(5) REFERENCES bon_casa(idBonCasa) ,
  idCardFidelitate NUMBER(5) REFERENCES Card_Fidelitate(idCardFidelitate) ,
  Suma NUMBER(10,2),
  SumaReducere NUMBER(10,2),
  PRIMARY KEY (idBonCasa, idCardFidelitate)
  )
;

CREATE TABLE medicament_bon (
	idboncasa NUMBER(5) CONSTRAINT fk_bonCasa_medicament_bon REFERENCES bon_casa(idboncasa) ,
  idcardFidelitate NUMBER(5) CONSTRAINT fk_MedBonCardFid REFERENCES card_fidelitate(idcardFidelitate),
	idmedicament NUMBER(5) CONSTRAINT fk_medicamentbon REFERENCES medicamente(idmedicament) ,
	cantitvanduta NUMBER (6),
	pretunitar NUMBER (7),
	CONSTRAINT pk_medicament_bon PRIMARY KEY (idboncasa, idmedicament)
	)
;

CREATE TABLE bon_reteta (
  idBonCasa NUMBER(5) REFERENCES bon_casa(idBonCasa) ,
  idReteta NUMBER(5) REFERENCES Reteta(idReteta) ,
  Suma NUMBER(10,2),
  SumaReducere NUMBER(10,2),
  PRIMARY KEY (idBonCasa, idReteta)
  )
;

CREATE TABLE medicament_farmacie_comanda (
	idmedicament NUMBER(5) CONSTRAINT fk_medicamente_comanda REFERENCES medicamente(idmedicament) ,
  idcomandafarmacie NUMBER(5) CONSTRAINT fk_comanda_comanda REFERENCES comenzi_farmacie(idcomandafarmacie) ,
	cantitcomandafarmacie NUMBER (6),
	pretcomandafarmacie NUMBER (7),
  CONSTRAINT pk_medicament_farmacie_comanda PRIMARY KEY (idcomandafarmacie, idmedicament)
	)
;

CREATE TABLE drepturi (
	utilizator VARCHAR2(30),
	idpacient NUMBER(5)
        	CONSTRAINT fk_drept_pacient REFERENCES pacient(idpacient),
	drept_inserare CHAR(1) DEFAULT 'N' NOT NULL
		CONSTRAINT ck_drept_ins CHECK (drept_inserare IN ('D','N')),
	drept_modificare CHAR(1) DEFAULT 'N' NOT NULL
		CONSTRAINT ck_drept_upd CHECK (drept_modificare IN ('D','N')),
	drept_stergere CHAR(1) DEFAULT 'N' NOT NULL
		CONSTRAINT ck_drept_del CHECK (drept_stergere IN ('D','N')),
	PRIMARY KEY (utilizator, idpacient)
	) ;

CREATE TABLE jurnal (
	idactualizare NUMBER(18) PRIMARY KEY,
	dataora TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	operator VARCHAR2(30) DEFAULT USER NOT NULL,
	tabela VARCHAR2(30),
	tip_actualizare CHAR(1) DEFAULT 'I' 
		NOT NULL CONSTRAINT ck_jurnal_tipact CHECK (tip_actualizare IN ('I', 'U', 'D')),
	vechea_inegistrare VARCHAR2(1000), 
	noua_inregistrare VARCHAR2(1000)
	) ;

-- tabela INCHIDERI contine lunile pentru care s-a facut inchiderea contabila
CREATE TABLE inchideri (
	an NUMBER(4),
	luna NUMBER(2),
	datainchiderii DATE DEFAULT CURRENT_DATE NOT NULL,
	operator VARCHAR2(30) DEFAULT USER,
	PRIMARY KEY (an, luna)
	) ;

INSERT INTO inchideri (an, luna) VALUES (2017,1) ;
