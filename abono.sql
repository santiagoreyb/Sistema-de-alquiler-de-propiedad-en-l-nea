--------------------------------------------------------
-- Archivo creado  - lunes-septiembre-05-2022   
--------------------------------------------------------
DROP TABLE "ABONO";
--------------------------------------------------------
--  DDL for Table ABONO
--------------------------------------------------------

  CREATE TABLE "ABONO" ("ID_ABONO" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , "ID_PRESTAMO" NUMBER(10,0), "FECHA" DATE, "VALOR_ABONO" NUMBER(20,0))
REM INSERTING into ABONO
SET DEFINE OFF;
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('1','1',to_date('09/11/69','DD/MM/RR'),'28659');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('2','2',to_date('10/01/46','DD/MM/RR'),'2772');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('3','3',to_date('28/08/27','DD/MM/RR'),'4122');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('4','4',to_date('17/10/83','DD/MM/RR'),'19773');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('5','5',to_date('08/03/04','DD/MM/RR'),'18298');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('6','6',to_date('10/04/00','DD/MM/RR'),'5382');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('7','7',to_date('03/07/63','DD/MM/RR'),'1785');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('8','8',to_date('29/04/78','DD/MM/RR'),'1612');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('9','9',to_date('16/02/80','DD/MM/RR'),'12485');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('10','10',to_date('15/08/14','DD/MM/RR'),'38645');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('11','11',to_date('28/03/53','DD/MM/RR'),'1709');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('12','12',to_date('04/07/77','DD/MM/RR'),'2388');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('13','13',to_date('30/09/11','DD/MM/RR'),'1436');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('14','14',to_date('24/04/97','DD/MM/RR'),'30879');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('15','15',to_date('04/05/99','DD/MM/RR'),'5944');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('16','16',to_date('04/08/08','DD/MM/RR'),'24100');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('17','17',to_date('30/06/41','DD/MM/RR'),'10617');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('18','18',to_date('08/10/48','DD/MM/RR'),'23076');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('19','19',to_date('28/07/97','DD/MM/RR'),'271');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('20','20',to_date('06/02/47','DD/MM/RR'),'10812');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('21','21',to_date('26/04/56','DD/MM/RR'),'6941');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('22','22',to_date('14/03/79','DD/MM/RR'),'15474');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('23','23',to_date('17/08/87','DD/MM/RR'),'1458');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('24','24',to_date('01/12/70','DD/MM/RR'),'591');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('25','25',to_date('10/06/54','DD/MM/RR'),'16923');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('26','26',to_date('17/06/14','DD/MM/RR'),'10852');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('27','27',to_date('24/11/54','DD/MM/RR'),'3168');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('28','28',to_date('08/07/63','DD/MM/RR'),'21357');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('29','29',to_date('21/07/67','DD/MM/RR'),'4687');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('30','30',to_date('18/06/10','DD/MM/RR'),'5914');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('31','31',to_date('31/12/69','DD/MM/RR'),'13039');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('32','32',to_date('13/10/43','DD/MM/RR'),'11066');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('33','33',to_date('18/10/45','DD/MM/RR'),'12862');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('34','34',to_date('20/07/16','DD/MM/RR'),'22599');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('35','35',to_date('03/01/51','DD/MM/RR'),'3970');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('36','36',to_date('15/05/17','DD/MM/RR'),'6913');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('37','37',to_date('09/04/39','DD/MM/RR'),'6429');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('38','38',to_date('29/10/91','DD/MM/RR'),'3966');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('39','39',to_date('31/07/19','DD/MM/RR'),'35761');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('40','40',to_date('17/03/87','DD/MM/RR'),'30885');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('41','41',to_date('19/12/29','DD/MM/RR'),'15010');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('42','42',to_date('14/09/82','DD/MM/RR'),'20222');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('43','43',to_date('06/01/46','DD/MM/RR'),'17638');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('44','44',to_date('25/09/37','DD/MM/RR'),'23772');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('45','45',to_date('17/08/24','DD/MM/RR'),'12134');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('46','46',to_date('20/01/06','DD/MM/RR'),'19348');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('47','47',to_date('20/12/77','DD/MM/RR'),'20516');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('48','48',to_date('23/04/46','DD/MM/RR'),'5855');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('49','49',to_date('09/07/04','DD/MM/RR'),'2901');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('50','50',to_date('09/06/12','DD/MM/RR'),'14696');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('51','51',to_date('08/03/96','DD/MM/RR'),'509');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('52','52',to_date('01/03/59','DD/MM/RR'),'105');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('53','53',to_date('12/03/60','DD/MM/RR'),'9084');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('54','54',to_date('01/07/91','DD/MM/RR'),'8010');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('55','55',to_date('04/05/64','DD/MM/RR'),'7704');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('56','56',to_date('12/09/17','DD/MM/RR'),'4058');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('57','57',to_date('05/03/03','DD/MM/RR'),'2895');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('58','58',to_date('11/05/85','DD/MM/RR'),'1456');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('59','59',to_date('03/11/90','DD/MM/RR'),'11766');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('60','60',to_date('14/09/49','DD/MM/RR'),'8550');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('61','61',to_date('01/01/44','DD/MM/RR'),'12337');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('62','62',to_date('08/07/08','DD/MM/RR'),'19345');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('63','63',to_date('19/04/23','DD/MM/RR'),'7788');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('64','64',to_date('14/08/03','DD/MM/RR'),'12946');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('65','65',to_date('19/07/42','DD/MM/RR'),'8526');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('66','66',to_date('23/09/49','DD/MM/RR'),'30764');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('67','67',to_date('24/02/12','DD/MM/RR'),'8597');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('68','68',to_date('15/04/94','DD/MM/RR'),'26877');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('69','69',to_date('22/05/40','DD/MM/RR'),'765');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('70','70',to_date('14/09/29','DD/MM/RR'),'4528');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('71','71',to_date('31/01/60','DD/MM/RR'),'2838');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('72','72',to_date('21/11/45','DD/MM/RR'),'2447');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('73','73',to_date('13/06/53','DD/MM/RR'),'11474');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('74','74',to_date('27/08/50','DD/MM/RR'),'17798');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('75','75',to_date('08/02/12','DD/MM/RR'),'18654');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('76','76',to_date('13/01/27','DD/MM/RR'),'16872');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('77','77',to_date('02/03/57','DD/MM/RR'),'2937');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('78','78',to_date('13/09/18','DD/MM/RR'),'56');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('79','79',to_date('29/06/62','DD/MM/RR'),'8475');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('80','80',to_date('30/05/16','DD/MM/RR'),'1847');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('81','81',to_date('04/09/32','DD/MM/RR'),'27890');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('82','82',to_date('22/01/01','DD/MM/RR'),'95');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('83','83',to_date('18/09/57','DD/MM/RR'),'44372');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('84','84',to_date('18/08/35','DD/MM/RR'),'3147');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('85','85',to_date('19/04/88','DD/MM/RR'),'5915');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('86','86',to_date('18/07/85','DD/MM/RR'),'1978');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('87','87',to_date('30/01/88','DD/MM/RR'),'37586');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('88','88',to_date('22/11/66','DD/MM/RR'),'6212');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('89','89',to_date('18/09/25','DD/MM/RR'),'6415');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('90','90',to_date('10/01/54','DD/MM/RR'),'20440');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('91','91',to_date('11/04/65','DD/MM/RR'),'17127');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('92','92',to_date('03/04/85','DD/MM/RR'),'13611');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('93','93',to_date('09/05/74','DD/MM/RR'),'20414');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('94','94',to_date('04/10/85','DD/MM/RR'),'4651');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('95','95',to_date('19/12/55','DD/MM/RR'),'439');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('96','96',to_date('30/04/55','DD/MM/RR'),'2625');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('97','97',to_date('23/06/16','DD/MM/RR'),'22443');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('98','98',to_date('07/09/91','DD/MM/RR'),'9206');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('99','99',to_date('24/05/71','DD/MM/RR'),'11613');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('100','100',to_date('09/11/71','DD/MM/RR'),'5696');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('101','101',to_date('07/09/51','DD/MM/RR'),'12282');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('102','102',to_date('21/03/57','DD/MM/RR'),'23591');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('103','103',to_date('30/11/75','DD/MM/RR'),'1391');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('104','104',to_date('19/04/12','DD/MM/RR'),'43453');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('105','105',to_date('27/06/57','DD/MM/RR'),'1560');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('106','106',to_date('22/08/60','DD/MM/RR'),'8535');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('107','107',to_date('04/08/50','DD/MM/RR'),'21317');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('108','108',to_date('09/05/78','DD/MM/RR'),'21371');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('109','109',to_date('29/05/65','DD/MM/RR'),'20176');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('110','110',to_date('17/10/56','DD/MM/RR'),'35448');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('111','111',to_date('24/07/81','DD/MM/RR'),'36233');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('112','112',to_date('22/02/78','DD/MM/RR'),'15487');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('113','113',to_date('03/12/01','DD/MM/RR'),'15132');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('114','114',to_date('23/09/93','DD/MM/RR'),'15884');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('115','115',to_date('12/10/31','DD/MM/RR'),'27354');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('116','116',to_date('23/02/76','DD/MM/RR'),'44984');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('117','117',to_date('25/12/00','DD/MM/RR'),'37148');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('118','118',to_date('18/06/37','DD/MM/RR'),'1664');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('119','119',to_date('29/08/44','DD/MM/RR'),'20867');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('120','120',to_date('09/05/45','DD/MM/RR'),'1271');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('121','121',to_date('13/01/78','DD/MM/RR'),'20258');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('122','122',to_date('31/03/51','DD/MM/RR'),'10894');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('123','123',to_date('14/02/83','DD/MM/RR'),'169');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('124','124',to_date('15/09/90','DD/MM/RR'),'4514');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('125','125',to_date('31/07/38','DD/MM/RR'),'25182');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('126','126',to_date('08/05/52','DD/MM/RR'),'16980');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('127','127',to_date('03/08/78','DD/MM/RR'),'8619');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('128','128',to_date('18/07/57','DD/MM/RR'),'472');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('129','129',to_date('06/09/25','DD/MM/RR'),'36223');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('130','130',to_date('18/09/26','DD/MM/RR'),'7503');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('131','131',to_date('16/01/29','DD/MM/RR'),'21536');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('132','132',to_date('04/12/34','DD/MM/RR'),'14376');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('133','133',to_date('31/07/50','DD/MM/RR'),'7095');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('134','134',to_date('13/11/51','DD/MM/RR'),'14766');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('135','135',to_date('22/09/66','DD/MM/RR'),'4856');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('136','136',to_date('02/07/30','DD/MM/RR'),'39503');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('137','137',to_date('24/04/44','DD/MM/RR'),'23943');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('138','138',to_date('19/12/54','DD/MM/RR'),'5662');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('139','139',to_date('09/04/42','DD/MM/RR'),'1408');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('140','140',to_date('28/02/16','DD/MM/RR'),'3037');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('141','141',to_date('19/09/23','DD/MM/RR'),'10373');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('142','142',to_date('07/09/72','DD/MM/RR'),'15587');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('143','143',to_date('30/10/39','DD/MM/RR'),'14401');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('144','144',to_date('04/02/09','DD/MM/RR'),'6246');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('145','145',to_date('21/12/70','DD/MM/RR'),'15604');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('146','146',to_date('24/03/54','DD/MM/RR'),'11658');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('147','147',to_date('07/08/77','DD/MM/RR'),'3482');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('148','148',to_date('06/01/89','DD/MM/RR'),'12268');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('149','149',to_date('27/10/42','DD/MM/RR'),'2356');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('150','150',to_date('15/09/32','DD/MM/RR'),'37743');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('151','151',to_date('30/06/73','DD/MM/RR'),'4168');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('152','152',to_date('29/10/79','DD/MM/RR'),'36880');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('153','153',to_date('15/05/48','DD/MM/RR'),'26314');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('154','154',to_date('17/12/81','DD/MM/RR'),'3652');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('155','155',to_date('26/09/29','DD/MM/RR'),'15718');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('156','156',to_date('22/12/45','DD/MM/RR'),'13938');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('157','157',to_date('28/06/33','DD/MM/RR'),'2043');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('158','158',to_date('23/09/50','DD/MM/RR'),'13523');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('159','159',to_date('05/02/41','DD/MM/RR'),'11545');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('160','160',to_date('20/05/40','DD/MM/RR'),'5150');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('161','161',to_date('05/11/46','DD/MM/RR'),'18058');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('162','162',to_date('07/04/78','DD/MM/RR'),'39264');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('163','163',to_date('22/12/73','DD/MM/RR'),'37678');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('164','164',to_date('07/05/13','DD/MM/RR'),'2397');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('165','165',to_date('21/10/73','DD/MM/RR'),'9118');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('166','166',to_date('24/05/65','DD/MM/RR'),'8628');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('167','167',to_date('23/08/59','DD/MM/RR'),'21802');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('168','168',to_date('21/06/00','DD/MM/RR'),'39007');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('169','169',to_date('04/06/00','DD/MM/RR'),'10268');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('170','170',to_date('14/06/53','DD/MM/RR'),'16485');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('171','171',to_date('15/05/50','DD/MM/RR'),'2360');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('172','172',to_date('10/10/05','DD/MM/RR'),'1916');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('173','173',to_date('03/02/11','DD/MM/RR'),'36084');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('174','174',to_date('14/11/14','DD/MM/RR'),'3044');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('175','175',to_date('01/03/58','DD/MM/RR'),'19983');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('176','176',to_date('06/03/16','DD/MM/RR'),'10919');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('177','177',to_date('16/10/44','DD/MM/RR'),'1618');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('178','178',to_date('24/05/18','DD/MM/RR'),'4885');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('179','179',to_date('01/03/01','DD/MM/RR'),'7701');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('180','180',to_date('25/10/68','DD/MM/RR'),'9505');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('181','181',to_date('28/06/86','DD/MM/RR'),'1364');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('182','182',to_date('16/09/22','DD/MM/RR'),'15913');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('183','183',to_date('12/10/34','DD/MM/RR'),'6324');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('184','184',to_date('04/09/82','DD/MM/RR'),'2197');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('185','185',to_date('27/03/56','DD/MM/RR'),'49402');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('186','186',to_date('17/02/76','DD/MM/RR'),'1337');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('187','187',to_date('07/07/75','DD/MM/RR'),'6580');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('188','188',to_date('09/04/79','DD/MM/RR'),'5898');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('189','189',to_date('22/01/94','DD/MM/RR'),'866');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('190','190',to_date('30/08/55','DD/MM/RR'),'10935');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('191','191',to_date('22/10/49','DD/MM/RR'),'1897');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('192','192',to_date('28/08/18','DD/MM/RR'),'5776');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('193','193',to_date('03/09/92','DD/MM/RR'),'7085');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('194','194',to_date('12/04/00','DD/MM/RR'),'24854');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('195','195',to_date('19/10/93','DD/MM/RR'),'406');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('196','196',to_date('24/03/43','DD/MM/RR'),'25191');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('197','197',to_date('21/10/97','DD/MM/RR'),'8895');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('198','198',to_date('29/06/10','DD/MM/RR'),'9412');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('199','199',to_date('12/12/83','DD/MM/RR'),'262');
Insert into ABONO (ID_ABONO,ID_PRESTAMO,FECHA,VALOR_ABONO) values ('200','200',to_date('12/10/40','DD/MM/RR'),'16322');
--------------------------------------------------------
--  DDL for Index SYS_C00304885
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00304885" ON "ABONO" ("ID_ABONO")
--------------------------------------------------------
--  DDL for Index SYS_C00304886
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00304886" ON "ABONO" ("ID_PRESTAMO", "FECHA")
--------------------------------------------------------
--  Constraints for Table ABONO
--------------------------------------------------------

  ALTER TABLE "ABONO" MODIFY ("ID_ABONO" NOT NULL ENABLE)
  ALTER TABLE "ABONO" MODIFY ("ID_PRESTAMO" NOT NULL ENABLE)
  ALTER TABLE "ABONO" MODIFY ("FECHA" NOT NULL ENABLE)
  ALTER TABLE "ABONO" MODIFY ("VALOR_ABONO" NOT NULL ENABLE)
  ALTER TABLE "ABONO" ADD PRIMARY KEY ("ID_ABONO") USING INDEX  ENABLE
  ALTER TABLE "ABONO" ADD UNIQUE ("ID_PRESTAMO", "FECHA") USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ABONO
--------------------------------------------------------

  ALTER TABLE "ABONO" ADD FOREIGN KEY ("ID_PRESTAMO") REFERENCES "PRESTAMO" ("ID_PRESTAMO") ENABLE
