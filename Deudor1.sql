--------------------------------------------------------
-- Archivo creado  - jueves-septiembre-01-2022   
--------------------------------------------------------
DROP TABLE "DEUDOR";
--------------------------------------------------------
--  DDL for Table DEUDOR
--------------------------------------------------------

  CREATE TABLE "DEUDOR" ("ID_DEUDOR" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , "TIPO_DOC" VARCHAR2(50), "NUMERO_DOC" NUMBER(10,0), "GENERO" VARCHAR2(1), "NOMBRE_DEUDOR" VARCHAR2(50))
REM INSERTING into DEUDOR
SET DEFINE OFF;
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('1','CC','1001096579','M','Juan');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('2','CC','76435890','M','Pedro');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('3','CE','7654678','F','Luis');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('4','CC','1023678468','M','Lucas');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('5','CC','75307558','M','Juliana');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('6','CE','9654367','F','Andrea');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('7','CC','1006835692','F','Nicolas');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('8','CC','1038965268','F','Karen');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('9','CE','7654786','M','Diana');
Insert into DEUDOR (ID_DEUDOR,TIPO_DOC,NUMERO_DOC,GENERO,NOMBRE_DEUDOR) values ('10','CE','8765390','M','Jesus');
--------------------------------------------------------
--  DDL for Index SYS_C00304870
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00304870" ON "DEUDOR" ("ID_DEUDOR")
--------------------------------------------------------
--  DDL for Index SYS_C00304871
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00304871" ON "DEUDOR" ("TIPO_DOC", "NUMERO_DOC")
--------------------------------------------------------
--  Constraints for Table DEUDOR
--------------------------------------------------------

  ALTER TABLE "DEUDOR" MODIFY ("ID_DEUDOR" NOT NULL ENABLE)
  ALTER TABLE "DEUDOR" MODIFY ("TIPO_DOC" NOT NULL ENABLE)
  ALTER TABLE "DEUDOR" MODIFY ("NUMERO_DOC" NOT NULL ENABLE)
  ALTER TABLE "DEUDOR" MODIFY ("GENERO" NOT NULL ENABLE)
  ALTER TABLE "DEUDOR" ADD CHECK (Genero IN ('M', 'F')) ENABLE
  ALTER TABLE "DEUDOR" ADD PRIMARY KEY ("ID_DEUDOR") USING INDEX  ENABLE
  ALTER TABLE "DEUDOR" ADD UNIQUE ("TIPO_DOC", "NUMERO_DOC") USING INDEX  ENABLE
