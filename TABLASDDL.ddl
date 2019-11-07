-- Generado por Oracle SQL Developer Data Modeler 19.2.0.182.1216
--   en:        2019-11-05 12:24:24 CET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE enfermedad (
    id            INTEGER NOT NULL,
    nombre        VARCHAR2(30),
    edad_media    INTEGER,
    hereditaria   CHAR(1),
    causas        VARCHAR2(90),
    sintomas      VARCHAR2(90),
    prevención    VARCHAR2(80)
);

ALTER TABLE enfermedad ADD CONSTRAINT enfermedad_pk PRIMARY KEY ( id );

CREATE TABLE hay (
    enfermedad_id   INTEGER NOT NULL,
    país_id         INTEGER NOT NULL
);

ALTER TABLE hay ADD CONSTRAINT hay_pk PRIMARY KEY ( enfermedad_id,
                                                    país_id );

CREATE TABLE medicamento (
    id                  INTEGER NOT NULL,
    nombre              VARCHAR2(30),
    tipo_consumir       VARCHAR2(50),
    dosis               VARCHAR2(50),
    precio_aproximado   VARCHAR2(30),
    autorizado          VARCHAR2(30)
);

ALTER TABLE medicamento ADD CONSTRAINT medicamento_pk PRIMARY KEY ( id );

CREATE TABLE país (
    id                   INTEGER NOT NULL,
    nombre               VARCHAR2(30),
    población            FLOAT,
    población_afectada   FLOAT,
    continente           VARCHAR2(40)
);

ALTER TABLE país ADD CONSTRAINT país_pk PRIMARY KEY ( id );

CREATE TABLE tiene (
    enfermedad_id    INTEGER NOT NULL,
    medicamento_id   INTEGER NOT NULL
);

ALTER TABLE tiene ADD CONSTRAINT tiene_pk PRIMARY KEY ( enfermedad_id,
                                                        medicamento_id );

ALTER TABLE hay
    ADD CONSTRAINT hay_enfermedad_fk FOREIGN KEY ( enfermedad_id )
        REFERENCES enfermedad ( id );

ALTER TABLE hay
    ADD CONSTRAINT hay_país_fk FOREIGN KEY ( país_id )
        REFERENCES país ( id );

ALTER TABLE tiene
    ADD CONSTRAINT tiene_enfermedad_fk FOREIGN KEY ( enfermedad_id )
        REFERENCES enfermedad ( id );

ALTER TABLE tiene
    ADD CONSTRAINT tiene_medicamento_fk FOREIGN KEY ( medicamento_id )
        REFERENCES medicamento ( id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
