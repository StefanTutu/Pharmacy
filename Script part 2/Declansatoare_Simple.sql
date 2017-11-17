CREATE OR REPLACE TRIGGER TrgReturMedicamentInsBefoRow
BEFORE INSERT ON retur
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_idReturMedicament.NEXTVAL INTO :NEW.idReturMedicament FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgCardFidelitateInsBefoRow
BEFORE INSERT ON card_fidelitate
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_idCardFidelitate.NEXTVAL INTO :NEW.idCardFidelitate FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgCategFidelitateInsBefoRow
BEFORE INSERT ON categ_fidelitate
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_idCategFidelitate.NEXTVAL INTO :NEW.idCategFidelitate FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgPacientInsBefoRow
BEFORE INSERT ON pacient
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_idPacient.NEXTVAL INTO :NEW.idpacient FROM dual ;
END ;

-------------------------------------------------

CREATE OR REPLACE TRIGGER TrgCategSocioProfInsBefoRow
BEFORE INSERT ON categorii_socioprofesionale
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_idCategSocioProf.NEXTVAL INTO :NEW.idCategSocioProf FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgCategMedicamenteInsBefoRow
BEFORE INSERT ON categorii_medicamente
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdCategMedicamente.NEXTVAL INTO :NEW.IdCategMedicamente FROM dual ;
END ;

-------------------------------------------------

CREATE OR REPLACE TRIGGER TrgReducereInsBefoRow
BEFORE INSERT ON reducere
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_Idreducere.NEXTVAL INTO :NEW.Idreducere FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgMedicInsBefoRow
BEFORE INSERT ON medic
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdMedic.NEXTVAL INTO :NEW.IdMedic FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgBoalaInsBefoRow
BEFORE INSERT ON boala
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdBoala.NEXTVAL INTO :NEW.IdBoala FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgGrupaBoalaInsBefoRow
BEFORE INSERT ON grupa_boala
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdGrupaBoala.NEXTVAL INTO :NEW.IdGrupaBoala FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgLotInsBefoRow
BEFORE INSERT ON lot
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdLot.NEXTVAL INTO :NEW.IdLot FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgPreparatInsBefoRow
BEFORE INSERT ON preparat
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdPreparat.NEXTVAL INTO :NEW.IdPreparat FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgSubstanteInsBefoRow
BEFORE INSERT ON substante
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdSubstante.NEXTVAL INTO :NEW.IdSubstanta FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgMedicamenteInsBefoRow
BEFORE INSERT ON medicamente
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdMedicamente.NEXTVAL INTO :NEW.IdMedicament FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgAvizInsotireInsBefoRow
BEFORE INSERT ON aviz_insotire
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdAvizInsotire.NEXTVAL INTO :NEW.IdAvizInsotire FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgAchitareInsBefoRow
BEFORE INSERT ON achitare
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdAchitareF.NEXTVAL INTO :NEW.IdAchitareF FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgFacturaInsBefoRow
BEFORE INSERT ON facturi
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdFactura.NEXTVAL INTO :NEW.IdFactura FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgComandaFinalaInsBefoRow
BEFORE INSERT ON comenzi_finale
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdComandaFinala.NEXTVAL INTO :NEW.IdComandaFinala FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgComandaFarmacieInsBefoRow
BEFORE INSERT ON comenzi_farmacie
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdComandaFarmacie.NEXTVAL INTO :NEW.IdComandaFarmacie FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgFurnizorInsBefoRow
BEFORE INSERT ON furnizori
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdFurnizor.NEXTVAL INTO :NEW.IdFurnizor FROM dual ;
END ;

-------------------------------------------------
CREATE OR REPLACE TRIGGER TrgFarmacieInsBefoRow
BEFORE INSERT ON farmacii
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT seq_IdFarmacie.NEXTVAL INTO :NEW.IdFarmacie FROM dual ;
END ;

-------------------------------------------------