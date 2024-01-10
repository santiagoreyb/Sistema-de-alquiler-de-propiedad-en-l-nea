--------------------------------------------------------
-- Archivo creado  - jueves-septiembre-01-2022   
--------------------------------------------------------
DROP TABLE "BANCO";
--------------------------------------------------------
--  DDL for Table BANCO
--------------------------------------------------------

  CREATE TABLE "BANCO" ("ID_BANCO" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , "NOMBRE" VARCHAR2(50))
REM INSERTING into BANCO
SET DEFINE OFF;
Insert into BANCO (ID_BANCO,NOMBRE) values ('27','BBVA');
Insert into BANCO (ID_BANCO,NOMBRE) values ('25','Bancamia');
Insert into BANCO (ID_BANCO,NOMBRE) values ('23','BancoPopular');
Insert into BANCO (ID_BANCO,NOMBRE) values ('24','BancoW');
Insert into BANCO (ID_BANCO,NOMBRE) values ('21','Bancolombia');
Insert into BANCO (ID_BANCO,NOMBRE) values ('26','Bancoomeva');
Insert into BANCO (ID_BANCO,NOMBRE) values ('22','Davivienda');
Insert into BANCO (ID_BANCO,NOMBRE) values ('29','Falabella');
Insert into BANCO (ID_BANCO,NOMBRE) values ('28','Itau');
Insert into BANCO (ID_BANCO,NOMBRE) values ('30','Santander');
--------------------------------------------------------
--  DDL for Index SYS_C00304863
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00304863" ON "BANCO" ("ID_BANCO")
--------------------------------------------------------
--  DDL for Index SYS_C00304864
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00304864" ON "BANCO" ("NOMBRE")
--------------------------------------------------------
--  Constraints for Table BANCO
--------------------------------------------------------

  ALTER TABLE "BANCO" MODIFY ("ID_BANCO" NOT NULL ENABLE)
  ALTER TABLE "BANCO" MODIFY ("NOMBRE" NOT NULL ENABLE)
  ALTER TABLE "BANCO" ADD PRIMARY KEY ("ID_BANCO") USING INDEX  ENABLE
  ALTER TABLE "BANCO" ADD UNIQUE ("NOMBRE") USING INDEX  ENABLE
