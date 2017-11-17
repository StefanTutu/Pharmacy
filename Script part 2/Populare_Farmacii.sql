drop sequence seq_idBonCasa; 
drop sequence seq_idReturMedicament; 
drop sequence seq_idCardFidelitate; 
drop sequence seq_idCategFidelitate;
drop sequence seq_idReteta;
drop sequence seq_idPacient;
drop sequence seq_idCategSocioProf;
drop sequence seq_idCategMedicamente;
drop sequence seq_idReducere;
drop sequence seq_idMedic;
drop sequence seq_idBoala;
drop sequence seq_idGrupaBoala;
drop sequence seq_idLot;
drop sequence seq_idPreparat ;
drop sequence seq_idSubstante ;
drop sequence seq_idMedicamente ;
drop sequence seq_idAvizInsotire ;
drop sequence seq_idAchitareF ;
drop sequence seq_idFactura ;
drop sequence seq_idComandaFinala ;
drop sequence seq_idComandaFarmacie ;
drop sequence seq_idFurnizor ; 
drop sequence seq_idFarmacie ;
drop sequence seq_idactualizare;
-------------------------------------------------
CREATE SEQUENCE seq_idactualizare START WITH 1 MINVALUE 1 MAXVALUE 999999999999999999
	INCREMENT BY 1 ORDER NOCACHE ;
-------------------------------------------------
create sequence seq_idBonCasa increment by 1
    minvalue 101 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idReturMedicament increment by 1
    minvalue 1 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idCardFidelitate increment by 1
    minvalue 101 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idCategFidelitate increment by 1
    minvalue 1000 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idReteta increment by 1
    minvalue 20001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idPacient increment by 1
    minvalue 1 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idCategSocioProf increment by 1
    minvalue 5007 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idCategMedicamente increment by 1
    minvalue 5000 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idReducere increment by 1
    minvalue 5000 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idMedic increment by 1
    minvalue 10001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idBoala increment by 1
    minvalue 2001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idGrupaBoala increment by 1
    minvalue 1001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idLot increment by 1
    minvalue 1 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idPreparat increment by 1
    minvalue 89001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idSubstante increment by 1
    minvalue 35001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idMedicamente increment by 1
    minvalue 7001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idAvizInsotire increment by 1
    minvalue 100001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idAchitareF increment by 1
    minvalue 9001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idFactura increment by 1
    minvalue 19001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idComandaFinala increment by 1
    minvalue 60001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idComandaFarmacie increment by 1
    minvalue 50001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idFurnizor increment by 1
    minvalue 201 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
create sequence seq_idFarmacie increment by 1
    minvalue 1001 maxvalue 999999 nocycle nocache order;
-------------------------------------------------
--delete from inchideri;
delete from drepturi;
delete from plafon_retete;
delete from bon_card_fidelitate;
delete from bon_reteta;
delete from medicament_farmacie_comanda;
delete from medicament_bon;
delete from bon_casa; 
delete from retur_lot; 
delete from retur; 
--delete from medicamente_prescrise ;
delete from reducere_procent;
delete from receptie_medicam_furniz;
delete from card_fidelitate; 
delete from categ_fidelitate;
delete from reducere_categ_medicamente;  
delete from medicamente_reteta;
delete from reteta;
delete from pacient;
delete from categorii_socioprofesionale;
delete from categorii_medicamente;
delete from reducere;
delete from Medic;
delete from Boala;
delete from Grupa_Boala;
delete from Comanda_Finala_Medicament;
delete from Cantitate_Lot;
delete from Lot;
delete from Substanta_Preparat;
delete from Preparat ;
delete from Substante ;
delete from Medicamente_Preparate ;
delete from Medicamente_Achiz ;
delete from Medicamente ;
delete from Aviz_Insotire ;
delete from Achitare_Transe ;
delete from Achitare ;
delete from Facturi ;
delete from Comenzi_Finale ;
delete from Comenzi_Farmacie ;
delete from Furnizori ; 
delete from Farmacii ;

INSERT INTO farmacii (idFarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 1', 'Copou 3', 'Maria Ionescu','Iasi', '0232 219221') ;
INSERT INTO farmacii (Idfarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 2', 'Independentei, 23', 'Rares Dragomir','Iasi', '0232 210001') ;
INSERT INTO farmacii (idFarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 3', 'Tudor Vladimirescu, 3D', 'Madalina Florescu','Iasi', '0232 235221') ;
INSERT INTO farmacii (idFarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 4', 'Valea Alba, A2', 'Elena Pascu','Iasi', '0232 234521') ;
INSERT INTO farmacii (idFarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 5', 'Piata Unirii', 'Anca Popescu','Iasi', '0232 217891') ;
INSERT INTO farmacii (idFarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 6', 'Tudor Vladimirescu, Iulius Mall', 'Cella Tremurici','Iasi', '0232 215551') ;
INSERT INTO farmacii (idFarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 7', 'Pacurari', 'Tiberiu Stan','Iasi', '0232 215431') ;
INSERT INTO farmacii (idFarmacie,NumeFarmacie,	AdresaFarmacie, Gestionar, Judet, Telefon) VALUES (SEQ_IDFARMACIE.NEXTVAL,'Ropharma 8', 'Copou 10', 'Roxana Stafie','Iasi', '0232 287641') ;

INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Farmiz', 'George Brun', 'Iasi', '6859662', '0232 122326', ' farmiz@mail.com') ;
INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Demi', 'Bogdan Mihalea', 'Iasi', '6834562', '0232 123323', 'demi@mail.com') ;
INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Dodac', 'Lucian Ghizmo', 'Iasi', '6857772', '0232 123426', 'dodac@mail.com') ;
INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Medimfarm', 'Paul Toderica', 'Iasi', '6858762', '0232 120006', 'medimfarm@mail.com') ;
INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Alteoma', 'Codrin Ropota', 'Iasi', '680982', '0232 123400', 'alteoma@mail.com') ;
INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Remedica', 'Ioana Bruma', 'Iasi', '6859002', '0232 123455', 'remedica@mail.com') ;
INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Caritax', 'Corina Badea', 'Iasi', '6009662', '0232 129956', 'caritax@mail.com') ;
INSERT INTO furnizori (idfurnizor,NumeFurnizor, PersoanaContact, Localitate, CodFiscal, Telefon, Email) VALUES (SEQ_IDFurnizor.NEXTVAL,'Pex', 'Ciprian Codrescu', 'Iasi', '6823262', '0232 198456', 'pex@mail.com') ;

INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,iDFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1002, 2450, DATE'2016-01-14', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1004, 56050, DATE'2016-01-10', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1006, 1850, DATE'2016-01-04', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1012, 38450, DATE'2016-01-08', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1008,  7050, DATE'2016-01-12', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1016, 16350, DATE'2016-01-13', 'comanda farmacia 6') ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1004,  6800, DATE'2016-01-11', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1008,4500, DATE'2016-01-07', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1002, 5000, DATE'2016-01-05', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1008, 24000, DATE'2016-01-03', NULL) ;
INSERT INTO comenzi_farmacie (IDCOMANDAFARMACIE,IdFarmacie, ValoareComanda, DataComanda, ObsComanda) VALUES (SEQ_IDCOMANDAFARMACIE.NEXTVAL,1004, 34000, DATE'2017-01-01', NULL) ;

INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,202, 50000, DATE'2016-08-14', 'Comanda depozit') ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,204, 42000, DATE'2016-08-14', NULL) ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,206,  2900, DATE'2016-08-14', NULL) ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,208, 20000, DATE'2016-10-14', NULL) ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,210, 34000 , DATE'2016-08-10', NULL) ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,212, 50000, DATE'2016-10-10', 'Comanda finala') ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,210, 80000, DATE'2016-08-14', NULL) ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,202, 50000, DATE'2016-08-10', NULL) ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,204,  70000, DATE'2016-09-14', NULL) ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,206,  60000, DATE'2016-10-14','Comanda depozit') ;
INSERT INTO comenzi_finale (iDcOMANDAFINALA,IdFurnizor, ValoareComandaFinala, DataComandaFinala, ObsComandaFinala) VALUES (SEQ_IDCOMANDAFINALA.NEXTVAL,208, 50000, DATE'2016-08-14', NULL) ;

INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500501, DATE'2016-01-06', 45000, .19, 60024) ;
INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500502, DATE'2016-04-07', 20000, .19, 60026) ;
INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500503, DATE'2016-08-03', 50000, .19, 60024) ;
INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500504, DATE'2016-09-05', 23000, .19, 60024) ;
INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500505, DATE'2016-01-09', 20500, .19, 60026) ;
INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500506, DATE'2016-01-10', 7000, .19, 60026) ;
INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500507, DATE'2016-01-11', 20000, .19, 60036) ;
INSERT INTO facturi (IDFACTURA,NrFactura, DataFact, ValoareFactura, TVAFactura, IdComandaFinala) VALUES (SEQ_IDFACTURA.NEXTVAL,500508, DATE'2016-01-12', 14000, .19, 60040) ;

INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1501, DATE'2016-01-06') ;
INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1502, DATE'2016-01-01') ;
INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1503, DATE'2016-01-14') ;
INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1504, DATE'2016-02-12') ;
INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1505, DATE'2016-03-09') ;
INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1506, DATE'2016-01-05') ;
INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1507, DATE'2016-05-10') ;
INSERT INTO achitare (IDACHITAREF,SerieDoc, DataAchitare) VALUES (SEQ_IDACHITAREF.NEXTVAL,1508, DATE'2016-06-12') ;
 
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19034, 9008, 2700) ;
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19036, 9002, 12000) ;
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19038, 9006, 5000) ;
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19034, 9010, 1000) ;
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19036, 9004, 2500) ;
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19040, 9006, 3000) ;
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19048, 9004, 4000) ;
INSERT INTO achitare_transe(IDFACTURA,IDACHITAREF,TRANSA) VALUES ( 19046, 9008, 1000) ; 
 
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2016-01-03', 4700, .19, 50004);
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2016-01-05', 3500, .19, 50002);
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2016-01-06', 3400, .19, 50006);
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2016-01-01', 12000, .19, 50008);
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2016-01-13', 2200, .19, 50010);
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2016-01-10', 6500, .19, 50004);
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2016-01-08', 2300, .19, 50006);
INSERT INTO aviz_insotire (IDAVIZINSOTIRE,DataAvizInsotire, ValoareAvizInsotire, TVAavizInsotire, IdComandaFarmacie) VALUES (SEQ_IDAVIZINSOTIRE.NEXTVAL,DATE'2017-01-09', 1100, .19, 50008);
 
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Agocalmin','Analgezice', 'DA', 'A');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Paracetamol',NULL, 'NU', 'A');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Solutii magistrale',NULL, 'DA', 'P');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Brevoxyl',NULL, 'NU', 'A');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Fervex',NULL, 'NU', 'A');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Clor-butanol',NULL, 'DA', 'P');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'TeraFlu',NULL, 'DA', 'A');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Aspacardin',NULL, 'NU', 'A');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Prep1',NULL, 'NU', 'P');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Solx',NULL, 'NU', 'P');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Glocura',NULL, 'NU', 'P');
INSERT INTO medicamente (IDMEDICAMENT,NumeMedicament, ObsMedicament, Prescris, tipMedicament) VALUES (SEQ_IDMEDICAMENTE.NEXTVAL,'Solfacetamina',NULL, 'DA', 'P');

INSERT INTO medicamente_achiz (IDMEDACHIZ,UMMEDACHIZ,CONCENTRATIEMEDACHIZ,STOC,COMPOZITIEMEDACHIZ,DATAEXPIR,PRETMEDACHIZ) VALUES (7012, 'buc','20mg', 300, 'natrium phenyl methyl aminome-thansulfonicum', DATE'2017-01-01',5);
INSERT INTO medicamente_achiz (IDMEDACHIZ,UMMEDACHIZ,CONCENTRATIEMEDACHIZ,STOC,COMPOZITIEMEDACHIZ,DATAEXPIR,PRETMEDACHIZ) VALUES (7002, 'buc','10mg', 350, 'comp', DATE'2017-01-01',1.3);
INSERT INTO medicamente_achiz (IDMEDACHIZ,UMMEDACHIZ,CONCENTRATIEMEDACHIZ,STOC,COMPOZITIEMEDACHIZ,DATAEXPIR,PRETMEDACHIZ) VALUES (7004, 'flacon','40g', 360, 'sulfurosus zincatus', DATE'2017-01-30',23);
INSERT INTO medicamente_achiz (IDMEDACHIZ,UMMEDACHIZ,CONCENTRATIEMEDACHIZ,STOC,COMPOZITIEMEDACHIZ,DATAEXPIR,PRETMEDACHIZ) VALUES (7010, 'pliculete','20g', 300, 'cloruros ciocolatus', DATE'2016-01-01',2.7);
INSERT INTO medicamente_achiz (IDMEDACHIZ,UMMEDACHIZ,CONCENTRATIEMEDACHIZ,STOC,COMPOZITIEMEDACHIZ,DATAEXPIR,PRETMEDACHIZ) VALUES (7006, 'pliculete','20g', 300, 'acid acetil salicilic', DATE'2016-05-13',2.5);
INSERT INTO medicamente_achiz (IDMEDACHIZ,UMMEDACHIZ,CONCENTRATIEMEDACHIZ,STOC,COMPOZITIEMEDACHIZ,DATAEXPIR,PRETMEDACHIZ) VALUES (7008, 'comprimate','2g', 1490, 'thansulfonicum', DATE'2016-01-21',0.5);

INSERT INTO substante (IDSUBSTANTA,DenSubstanta, UM, ObsSubstanta, Pret) VALUES (SEQ_IDSUBSTANTE.NEXTVAL,'Analgin', 'ml', NULL, 23);
INSERT INTO substante (IDSUBSTANTA,DenSubstanta, UM, ObsSubstanta, Pret) VALUES (SEQ_IDSUBSTANTE.NEXTVAL,'Diclogenac', 'g', NULL, 30);
INSERT INTO substante (IDSUBSTANTA,DenSubstanta, UM, ObsSubstanta, Pret) VALUES (SEQ_IDSUBSTANTE.NEXTVAL,'Neomicin', 'mg', NULL, 2.3);
INSERT INTO substante (IDSUBSTANTA,DenSubstanta, UM, ObsSubstanta, Pret) VALUES (SEQ_IDSUBSTANTE.NEXTVAL,'Ibuprofen', 'ml', NULL, 1.5);
INSERT INTO substante (IDSUBSTANTA,DenSubstanta, UM, ObsSubstanta, Pret) VALUES (SEQ_IDSUBSTANTE.NEXTVAL,'Efedrina', 'mg', NULL, 2);
INSERT INTO substante (IDSUBSTANTA,DenSubstanta, UM, ObsSubstanta, Pret) VALUES (SEQ_IDSUBSTANTE.NEXTVAL,'Vaselina', 'ml', NULL, 0.8);
INSERT INTO substante (IDSUBSTANTA,DenSubstanta, UM, ObsSubstanta, Pret) VALUES (SEQ_IDSUBSTANTE.NEXTVAL,'Pioxicam', 'ml', NULL, 4);

--INSERT INTO medicamente_preparate VALUES(7003, DATE'2012-01-14', DATE'2011-01-14', 12) ;
--INSERT INTO medicamente_preparate VALUES(7006, DATE'2012-01-14', DATE'2011-01-14', 2) ;
--INSERT INTO medicamente_preparate VALUES(7009, DATE'2013-01-14', DATE'2011-01-14', 120) ;
--INSERT INTO medicamente_preparate VALUES(7010, DATE'2012-02-14', DATE'2011-01-14', 23) ;
--INSERT INTO medicamente_preparate VALUES(7011, DATE'2012-01-14', DATE'2011-01-14', 152) ;
--INSERT INTO medicamente_preparate VALUES(7012, DATE'2012-06-14', DATE'2011-01-14', 45) ;

INSERT INTO medicamente_preparate (idMedPrep, dataExpir, dataFabr) VALUES(7002, DATE'2017-01-24', DATE'2016-01-14') ;
INSERT INTO medicamente_preparate (idMedPrep, dataExpir, dataFabr) VALUES(7006, DATE'2017-01-21', DATE'2016-01-14') ;
INSERT INTO medicamente_preparate (idMedPrep, dataExpir, dataFabr) VALUES(7004, DATE'2017-01-22', DATE'2016-01-14') ;
INSERT INTO medicamente_preparate (idMedPrep, dataExpir, dataFabr) VALUES(7010, DATE'2017-02-23', DATE'2016-01-14') ;
INSERT INTO medicamente_preparate (idMedPrep, dataExpir, dataFabr) VALUES(7008, DATE'2017-01-14', DATE'2016-01-14') ;
INSERT INTO medicamente_preparate (idMedPrep, dataExpir, dataFabr) VALUES(7012, DATE'2017-06-14', DATE'2016-01-14') ;

INSERT INTO preparat (Idpreparat, IdMedPrep, DenPreparat, UM, Concentratie, StocCurent) VALUES (SEQ_IDPreparat.NEXTVAL,7002, 'Solutii magistrale', 'ml', '50 mg/ml', 20) ;
INSERT INTO preparat (Idpreparat,IdMedPrep, DenPreparat, UM, Concentratie, StocCurent) VALUES (SEQ_IDPreparat.NEXTVAL,7006, 'Clor-butanol', 'ml', '10 mg/ml', 340) ;
INSERT INTO preparat (Idpreparat,IdMedPrep, DenPreparat, UM, Concentratie, StocCurent) VALUES (SEQ_IDPreparat.NEXTVAL,7004, 'Prep1', 'ml', '5 mg/ml', 200) ;
INSERT INTO preparat (Idpreparat,IdMedPrep, DenPreparat, UM, Concentratie, StocCurent) VALUES (SEQ_IDPreparat.NEXTVAL,7010, 'Solx', 'ml', '50 mg/ml', 120) ;
INSERT INTO preparat (Idpreparat,IdMedPrep, DenPreparat, UM, Concentratie, StocCurent) VALUES (SEQ_IDPreparat.NEXTVAL,7006, 'Glocura', 'ml', '0.4 mg/ml', 250) ;
INSERT INTO preparat (Idpreparat,IdMedPrep, DenPreparat, UM, Concentratie, StocCurent) VALUES (SEQ_IDPreparat.NEXTVAL,7008, 'Solfacetamina', 'ml', '5 mg/ml', 320) ;
 
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35002, 89002, 100, 'g');
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35004, 89004, 180, 'mg');
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35006, 89006, 10, 'mg');
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35008, 89008, 90, 'ml');
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35010, 89010, 75, 'ml');
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35012, 89004, 50, 'g');
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35014, 89012, 23, 'g');
INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35004, 89008, 45, 'mg');
--INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35004, 89006, 10, 'mg');
--INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35002, 89008, 29, 'ml');
--INSERT INTO substanta_preparat(IDSUBSTANTA,IDPREPARAT,CANTITATENECESARA,UM) VALUES (35007, 89008, 150, 'g');
--drop trigger TRGSUBSTANTAPREPARATINSBEFOROW;

INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7012, DATE'2016-01-01', DATE'2017-01-01');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7012, DATE'2015-08-01', DATE'2017-08-01');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7014, DATE'2015-12-01', DATE'2016-12-01');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7008, DATE'2015-01-01', DATE'2016-01-01');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7004, DATE'2015-12-12', DATE'2017-12-12');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7006, DATE'2015-01-01', DATE'2016-01-01');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7006, DATE'2015-01-01', DATE'2017-01-01');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7008, DATE'2015-01-01', DATE'2016-01-01');
INSERT INTO lot (IDLOT,IdMedicament, DataFabricatie, DataExpirarii) VALUES (SEQ_IDLOT.NEXTVAL,7012, DATE'2015-01-01', DATE'2016-01-01');
  
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100002, 2, 2000);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100004, 4, 3000);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100006, 6, 4500);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100008, 8, 5800);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100010, 10, 1000);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100012, 12, 500);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100014, 14, 800);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100016, 16, 900);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100018, 18, 600);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100018, 2, 300);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100022, 4, 7800);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100018, 6, 100);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100018, 8, 7800);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100018, 10, 2300);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100018, 12, 1880);
INSERT INTO cantitate_lot(IDAVIZINSOTIRE,IDLOT,CANTITATERECEPTIONATA) VALUES (100018, 14, 2800);
  
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7002, 60024, 2000, 1.4);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7004, 60026, 1500, 1);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7006, 60028, 1800, 50);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7008, 60030, 900, 12);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7010, 60032, 700, 1.9);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7012, 60034, 100, 5.5);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7014, 60036, 2300, 12);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7016, 60038, 8000, 4.5);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7018, 60040, 1000, 1.1);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7020, 60042, 400, 3.25);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7022, 60044, 100, 8);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7024, 60042, 2300, 12);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7002, 60040, 500, 9.4);
INSERT INTO comanda_finala_medicament(IDMEDICAMENT,IDCOMANDAFINALA,CANTITATECOMANDATAFINALA,PRETUNITAR) VALUES (7006, 60038, 100, 7);

INSERT INTO grupa_boala (IDGRUPABOALA,DenumireGrupa, Prioritate) VALUES (SEQ_IDGRUPABOALA.NEXTVAL,'Grupa A', 1);
INSERT INTO grupa_boala (IDGRUPABOALA,DenumireGrupa, Prioritate) VALUES (SEQ_IDGRUPABOALA.NEXTVAL,'Grupa B', 1);
INSERT INTO grupa_boala (IDGRUPABOALA,DenumireGrupa, Prioritate) VALUES (SEQ_IDGRUPABOALA.NEXTVAL,'Grupa C', 2);
INSERT INTO grupa_boala (IDGRUPABOALA,DenumireGrupa, Prioritate) VALUES (SEQ_IDGRUPABOALA.NEXTVAL,'Grupa D', 3);
INSERT INTO grupa_boala (IDGRUPABOALA,DenumireGrupa, Prioritate) VALUES (SEQ_IDGRUPABOALA.NEXTVAL,'Grupa E', 4);
  
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Antrax', 1004);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Bruceloza', 1004);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Difterie', 1004);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Dizenterie', 1002);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Febra tifoida', 1002);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Gonoree', 1006);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Hepatita A', 1006);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Holera', 1006);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Parotidita Epidemica', 1008);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Oreion', 1008);
INSERT INTO boala (IDBOALA,NumeBoala, IdGrupaBoala) VALUES (SEQ_IDBOALA.NEXTVAL,'Scabie', 1010);
  
INSERT INTO medic (IDMEDIC,Nume, Specializare, Adresa, Localitate, Telefon) VALUES (SEQ_IDMEDIC.NEXTVAL,'Mirela Ramona', 'Pediatrie', 'str.Florilor, nr.45', 'Roman', '0765444333');
INSERT INTO medic (IDMEDIC,Nume, Specializare, Adresa, Localitate, Telefon) VALUES (SEQ_IDMEDIC.NEXTVAL,'Popescu Vasile', 'Dermatologie', 'str. Primaverii, nr.3', 'Barlad', '0234232323');
INSERT INTO medic (IDMEDIC,Nume, Specializare, Adresa, Localitate, Telefon) VALUES (SEQ_IDMEDIC.NEXTVAL,'Darie Teofan', 'Oftalmologie', 'str.Sperantei', 'Iasi', '0232323232');
INSERT INTO medic (IDMEDIC,Nume, Specializare, Adresa, Localitate, Telefon) VALUES (SEQ_IDMEDIC.NEXTVAL,'Schiopu Maria', 'Endocrinologie', 'str. Jiului, nr 5', 'Craiova', '0744332211');
INSERT INTO medic (IDMEDIC,Nume, Specializare, Adresa, Localitate, Telefon) VALUES (SEQ_IDMEDIC.NEXTVAL,'Diaconu Costel', 'Ginecologie', 'str. Sarariei, nr.3', 'Iasi', '0232111555');
INSERT INTO medic (IDMEDIC,Nume, Specializare, Adresa, Localitate, Telefon) VALUES (SEQ_IDMEDIC.NEXTVAL,'Andreea Sofia', 'Pediatrie', 'str. Universitatii, bl.3, ap 19', 'Vaslui', '0721221122');
  
INSERT INTO pacient (IDPACIENT,NumePrenume, DataNasterii, CNP, Judet, Statut) VALUES (SEQ_IDPACIENT.NEXTVAL,'Diclisian Florin', DATE '1980-10-10', '1801010232323', 'Iasi', 'Asigurat');
INSERT INTO pacient (IDPACIENT,NumePrenume, DataNasterii, CNP, Judet, Statut) VALUES (SEQ_IDPACIENT.NEXTVAL,'Flutur Anca', DATE '1988-12-07', '5871924854759', 'Suceava', 'Asigurat');
INSERT INTO pacient (IDPACIENT,NumePrenume, DataNasterii, CNP, Judet, Statut) VALUES (SEQ_IDPACIENT.NEXTVAL,'Gosu Diana', DATE '1976-12-10', '14785957745874', 'Deva', 'Neasigurat');
INSERT INTO pacient (IDPACIENT,NumePrenume, DataNasterii, CNP, Judet, Statut) VALUES (SEQ_IDPACIENT.NEXTVAL,'Vizitiu Anca', DATE '1982-11-15', '25478547858741', 'Craiova', 'Neasigurat');
INSERT INTO pacient (IDPACIENT,NumePrenume, DataNasterii, CNP, Judet, Statut) VALUES (SEQ_IDPACIENT.NEXTVAL,'Niculcea Claudia', DATE '1985-10-02', '21458748596357', 'Bucuresti', 'Asigurat');
INSERT INTO pacient (IDPACIENT,NumePrenume, DataNasterii, CNP, Judet, Statut) VALUES (SEQ_IDPACIENT.NEXTVAL,'Maierean Adela', DATE '1982-11-12', '18574258655474', 'Botosani', 'Asigurat');
INSERT INTO pacient (IDPACIENT,NumePrenume, DataNasterii, CNP, Judet, Statut) VALUES (SEQ_IDPACIENT.NEXTVAL,'Pintilie Alexandrina', DATE '1975-10-12', '28745858747452', 'Hunedoara', 'Asigurat');      

INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('STEFAN', 2, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('STEFAN', 4, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('STEFAN', 6, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('STEFAN', 8, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('STEFAN', 10, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('STEFAN', 12, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('STEFAN', 14, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('MIRCEA', 2, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('MIRCEA', 4, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('MIRCEA', 6, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('MIRCEA', 8, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('MIRCEA', 10, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('MIRCEA', 12, 'D','D','D') ;
INSERT INTO drepturi(UTILIZATOR,IDPACIENT,DREPT_INSERARE,DREPT_MODIFICARE,DREPT_STERGERE) VALUES ('MIRCEA', 14, 'D','D','D') ;

INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Rabat', 'M');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Remiza', 'M');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Risturn', 'M');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere', 'M');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Disount', 'M');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere mica', 'M');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere mare', 'S');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere potrivita', 'S');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Discount partial', 'S');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Discount total', 'S');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere la lot', 'S');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere la pachet', 'S');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere la capsule', 'S');
INSERT INTO reducere (IDREDUCERE,DenumireReducere, tipReducere) VALUES (SEQ_IDREDUCERE.NEXTVAL,'Reducere de vip ', 'S');


INSERT INTO categorii_medicamente(IDCATEGMEDICAMENTE,PROCENT,OBSERVATII) VALUES (5010, .2, NULL);
INSERT INTO categorii_medicamente(IDCATEGMEDICAMENTE,PROCENT,OBSERVATII) VALUES (5002, 45, NULL);
INSERT INTO categorii_medicamente(IDCATEGMEDICAMENTE,PROCENT,OBSERVATII) VALUES (5011, 15.5, NULL);
INSERT INTO categorii_medicamente(IDCATEGMEDICAMENTE,PROCENT,OBSERVATII) VALUES (5008, 20, NULL);
INSERT INTO categorii_medicamente(IDCATEGMEDICAMENTE,PROCENT,OBSERVATII) VALUES (5006, 12, NULL);
INSERT INTO categorii_medicamente(IDCATEGMEDICAMENTE,PROCENT,OBSERVATII) VALUES (5006, 60, NULL);
  
INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (5001, 35, NULL);
INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (5029, 5, NULL);
INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (5027, 45, NULL);
INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (5024, 12, NULL);
INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (5026, 20.5, NULL);
INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (5028, 10, NULL);
INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (5003, 5, NULL);
--INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (SEQ_IDCATEGSOCIOPROF.NEXTVAL, 2, NULL);
--INSERT INTO categorii_socioprofesionale(IDCATEGSOCIOPROF,PROCENT,OBSERVATII) VALUES (SEQ_IDCATEGSOCIOPROF.NEXTVAL, 80, NULL);
 
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL, DATE'2016-08-01', DATE'2016-08-08', 2018, 10002, 5001, 2 );
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL,DATE'2016-09-15', DATE'2016-09-30', 2020, 10004, 5003, 4 );
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL,DATE'2016-08-11', DATE'2016-08-11', 2022, 10006, 5005, 6 );
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL,DATE'2016-12-01', DATE'2016-12-20', 2024, 10008, 5007, 8 );
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL,DATE'2016-09-04', DATE'2016-09-08', 2026, 10010, 5009, 10 );
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL,DATE'2016-11-01', DATE'2016-11-08', 2028, 10012, 5011, 12);
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL,DATE'2016-12-01', DATE'2016-12-02', 2030, 10014, 5013, 14);
INSERT INTO reteta (IDRETETA,DataEliberarii, DataIncheierii, IdBoala, IdMedic, IdReducere, IdPacient) VALUES (SEQ_IDRETETA.NEXTVAL,DATE'2016-08-05', DATE'2016-08-13', 2032, 10016, 5015, 16 );
--drop trigger TRGRETETAINSBEFOROW;

INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7002, 20004, 'tableta', 20, '1/zi');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7004, 20005, 'fiola', 5, '1/6ore');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7006, 20007, 'pilula', 15, '1/8ore');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7008, 20008, 'fiola', 16, '1/4ore');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7010, 20009, 'tableta', 15, ' 3/zi, dupa mesele principale');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7012, 20010, 'tableta', 20, '3/zi');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7014, 20011, 'tableta', 20, '2/zi');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7016, 20004, 'tableta', 20, '2/zi');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7018, 20005,'tableta', 20,'1/8ore');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7020, 20007, 'tableta', 20, '1/6ore');
--INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7002, 20005, 'tableta', 30, '1/12ore');
--INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7006, 20005, 'tableta', 12, '1/12ore');
--INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7008,20005, 'tableta', 30,'1/8ore');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7022, 20008, 'tableta', 30, '3/zi');
INSERT INTO medicamente_reteta (IdMedicament, IdReteta, UM, CantitatePrescrisa, Prescriptie) VALUES (7024, 20009, 'tableta', 30, '3/zi');
--drop trigger TRGMEDICAMENTERETETAINSBEFOROW;

INSERT INTO reducere_categ_medicamente (idmedicament, idcategMedicamente) VALUES (7002, 5001);
INSERT INTO reducere_categ_medicamente (idmedicament, idcategMedicamente) VALUES (7004, 5003);
INSERT INTO reducere_categ_medicamente (idmedicament, idcategMedicamente) VALUES (7006, 5005);
INSERT INTO reducere_categ_medicamente (idmedicament, idcategMedicamente) VALUES (7008, 5007);
INSERT INTO reducere_categ_medicamente (idmedicament, idcategMedicamente) VALUES (7010, 5009);
INSERT INTO reducere_categ_medicamente (idmedicament, idcategMedicamente) VALUES (7012, 5011);

INSERT INTO categ_fidelitate (IDCATEGFIDELITATE,denumire, procent) VALUES (SEQ_IDCATEGFIDELITATE.NEXTVAL,'intre 0-6 luni', 0.05) ;
INSERT INTO categ_fidelitate (IDCATEGFIDELITATE,denumire, procent) VALUES (SEQ_IDCATEGFIDELITATE.NEXTVAL,'Client cu vechimea pana intr-un an', 0.1) ;
INSERT INTO categ_fidelitate (IDCATEGFIDELITATE,denumire, procent) VALUES (SEQ_IDCATEGFIDELITATE.NEXTVAL,'Client cu vechimea intre 1-2 ani', 0.15) ;
INSERT INTO categ_fidelitate (IDCATEGFIDELITATE,denumire, procent) VALUES (SEQ_IDCATEGFIDELITATE.NEXTVAL,'Client cu vechimea intre 2-3 ani', 0.25) ;
INSERT INTO categ_fidelitate (IDCATEGFIDELITATE,denumire, procent) VALUES (SEQ_IDCATEGFIDELITATE.NEXTVAL,'Client cu vechimea peste 3 ani', 0.35) ;

INSERT INTO card_fidelitate (IDCARDFIDELITATE,IdPacient, IdCategfidelitate, DataInreg, ValCump, DataExp) VALUES (SEQ_IDCARDFIDELITATE.NEXTVAL,2, 1001, DATE'2016-08-06', 56, DATE'2017-08-06');
INSERT INTO card_fidelitate (IDCARDFIDELITATE,IdPacient, IdCategfidelitate, DataInreg, ValCump, DataExp) VALUES (SEQ_IDCARDFIDELITATE.NEXTVAL,4, 1003, DATE'2016-08-09', 50, DATE'2017-08-06');
INSERT INTO card_fidelitate (IDCARDFIDELITATE,IdPacient, IdCategfidelitate, DataInreg, ValCump, DataExp) VALUES (SEQ_IDCARDFIDELITATE.NEXTVAL,6, 1005, DATE'2016-08-10', 67, DATE'2017-08-06');
INSERT INTO card_fidelitate (IDCARDFIDELITATE,IdPacient, IdCategfidelitate, DataInreg, ValCump, DataExp) VALUES (SEQ_IDCARDFIDELITATE.NEXTVAL,8, 1007, DATE'2016-08-20', 40, DATE'2017-09-06');
INSERT INTO card_fidelitate (IDCARDFIDELITATE,IdPacient, IdCategfidelitate, DataInreg, ValCump, DataExp) VALUES (SEQ_IDCARDFIDELITATE.NEXTVAL,10, 1009, DATE'2016-08-06', 70, DATE'2017-03-06');
INSERT INTO card_fidelitate (IDCARDFIDELITATE,IdPacient, IdCategfidelitate, DataInreg, ValCump, DataExp) VALUES (SEQ_IDCARDFIDELITATE.NEXTVAL,12, 1001, DATE'2016-10-06', 39, DATE'2017-09-06');
INSERT INTO card_fidelitate (IDCARDFIDELITATE,IdPacient, IdCategfidelitate, DataInreg, ValCump, DataExp) VALUES (SEQ_IDCARDFIDELITATE.NEXTVAL,14, 1003, DATE'2016-03-06', 20, DATE'2017-08-06');
  
INSERT INTO receptie_medicam_furniz(IDMEDICAMENT,IDFACTURA,CANTITRECEPTIONATA,PRET) VALUES ( 7002,19034, 500, 57000);
INSERT INTO receptie_medicam_furniz(IDMEDICAMENT,IDFACTURA,CANTITRECEPTIONATA,PRET) VALUES (7004, 19036, 400, 49400);
INSERT INTO receptie_medicam_furniz(IDMEDICAMENT,IDFACTURA,CANTITRECEPTIONATA,PRET) VALUES ( 7006, 19038, 800, 34000);
INSERT INTO receptie_medicam_furniz(IDMEDICAMENT,IDFACTURA,CANTITRECEPTIONATA,PRET) VALUES (7008, 19040, 270, 25000);
INSERT INTO receptie_medicam_furniz(IDMEDICAMENT,IDFACTURA,CANTITRECEPTIONATA,PRET) VALUES ( 7010, 19042, 220, 10000);
INSERT INTO receptie_medicam_furniz(IDMEDICAMENT,IDFACTURA,CANTITRECEPTIONATA,PRET) VALUES ( 7012, 19044, 380, 29000);

--INSERT INTO medicamente_prescrise VALUES (20003, 7011, 1, 'plic' );
--INSERT INTO medicamente_prescrise VALUES (20001, 7001, 23, ' fiole')  ;
--INSERT INTO medicamente_prescrise VALUES (20004, 7009, 5, ' folii')  ;
--INSERT INTO medicamente_prescrise VALUES (20003, 7004, 30, 'comprimat')  ;
--INSERT INTO medicamente_prescrise VALUES (20007, 7006, 23, ' comprimat')  ;
--INSERT INTO medicamente_prescrise VALUES (20006, 7007, 15, ' fiole')  ;

INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-08-11');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-02-11');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-12');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-02-12');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-09-12');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-08-14');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-11-13');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-12-10');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-11-13');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-08-12');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-05-10');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-06-07');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-04-03');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-03-04');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-08-01');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-02-21');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2017-01-22');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-03');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-02-25');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-04-19');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-05-28');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-07-22');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-22');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-11');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-08-11');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-05-14');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-04-16');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-08-17');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-03-18');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-03-11');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-10');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-02');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-02');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-05-26');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-03-28');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-22');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-10');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-08-21');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-20');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-03-18');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-05-10');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-01-29');
INSERT INTO retur (IDRETURMEDICAMENT,dataretur) VALUES (SEQ_IDRETURMEDICAMENT.NEXTVAL,DATE'2016-12-02');
--drop trigger TRGRETURMEDICAMENTINSBEFOROW;

INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (1, 50002, 2, 25, 'expirate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (2, 50004, 4, 90, 'nesolicitate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (3, 50006, 6, 25, 'nesolicitate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (4, 50008, 8, 60, 'nesolicitate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (5, 50010, 10, 20, 'expirate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (6, 50012, 12, 31, 'nesolicitate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (7, 50014, 14, 42, 'expirate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (8, 50016, 16, 23, 'expirate');
INSERT INTO retur_lot (IDRETURMEDICAMENT,IDCOMANDAFARMACIE,IDLOT,CANTITATERETURNATA,MOTIVRETURNARE) VALUES (9, 50018, 18, 21, 'nesolicitate');

INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-08-10', 1002);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2017-01-21', 1004);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-08-10', 1002);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-03-16', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-02-14', 1008);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-06-14', 1010);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-07-18', 1012);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-04-14', 1014);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-02-16', 1016);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-09-15', 1014);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-08-13', 1012);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-08-14', 1010);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-09-14', 1008);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-11-12', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-12-14', 1004);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-08-14', 1002);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-03-16', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-05-17', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-01-18', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2017-01-14', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-03-14', 1008);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-05-11', 1008);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-06-10', 1002);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-11-14', 1004);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-02-15', 1008);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2011-08-15', 1002);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-03-15', 1002);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-05-14', 1004);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-02-14', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-02-24', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-03-12', 1006);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-05-14', 1008);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-06-01', 1008);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-11-20', 1010);
INSERT INTO bon_casa (IDBONCASA,Databon, IdFarmacie) VALUES (SEQ_IDBONCASA.NEXTVAL,DATE'2016-02-11', 1012);

INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (104, 104, 7002, 120);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (102, 102, 7004, 140);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (112, 108, 7006, 25);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (114, 110, 7008, 10);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (116, 112, 7010, 15);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (130, 114, 7012, 14);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (132, 112, 7014, 60);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (142, 110, 7016, 24);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (144, 108, 7018, 80);
--INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (103, 103, 7009, 10);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (146, 106, 7020, 27);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (148, 102, 7022, 12);
--INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (116, 103, 7001, 16);
INSERT INTO medicament_bon (idboncasa, idcardFidelitate, idmedicament, cantitvanduta) VALUES (104, 104, 7008, 18);
--drop trigger TRGMEDICAMENTBONINSBEFOROW;

INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7002, 50002, 500, 3030000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7004, 50004, 580, 3010000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7006, 50006, 1500, 206000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7008, 50008, 2600, 100000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7010, 50010, 1000, 430000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7012, 50012, 2300, 500000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7014, 50014, 800, 80000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7016, 50016, 300, 27000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7018, 50018, 90, 323000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7020, 50020, 200, 90000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7022, 50022, 570, 308000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7009, 50020, 510, 300000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7001, 50018, 100, 330300);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7003, 50016, 450, 306000);
INSERT INTO medicament_farmacie_comanda(IDMEDICAMENT,IDCOMANDAFARMACIE,CANTITCOMANDAFARMACIE,PRETCOMANDAFARMACIE) VALUES (7010, 50014, 800, 3703000);

INSERT INTO bon_reteta (idboncasa, idreteta) VALUES (102, 20004);
INSERT INTO bon_reteta (idboncasa, idreteta) VALUES (104, 20005);
INSERT INTO bon_reteta (idboncasa, idreteta) VALUES (112, 20007);
INSERT INTO bon_reteta (idboncasa, idreteta) VALUES (114, 20008);
--INSERT INTO bon_reteta (idboncasa, idreteta) VALUES (105, 20005);
--drop trigger TRGBONRETETAINSBEFOROW;