CREATE DATABASE PECL2;
/*create table if not exists personas_text(
    PERSON_ID TEXT NOT NULL,
    PERSON_SEX TEXT,
    PERSON_LASTNAME TEXT,
    PERSON_FIRSTNAME TEXT,
    PERSON_PHONE TEXT,
    PERSON_ADDRESS TEXT,
    PERSON_CITY TEXT,
    PERSON_STATE TEXT,
    PERSON_ZIP TEXT,
    PERSON_SSN TEXT,
    PERSON_DOB TEXT
 --   constraint person_pk_t PRIMARY KEY (PERSON_ID)
);*/
CREATE TABLE IF NOT EXISTS collision_persona_text(
    UNIQUE_ID varchar(200),
    COLLISION_ID varchar(200),
    CRASH_DATE varchar(200),
    CRASH_TIME varchar(200),
    PERSON_ID varchar(200),
    PERSON_TYPE varchar(200),
    PERSON_INJURY varchar(200),
    VEHICLE_ID  varchar(200),
    PERSON_AGE varchar(200),
    EJECTION varchar(200),
    EMOTIONAL_STATUS varchar(200),
    BODILY_INJURY varchar(200),
    POSITION_IN_VEHICLE varchar(200),
    SAFETY_EQUIPMENT varchar(200),
    PED_LOCATION varchar(200),
    PED_ACTION varchar(200),
    COMPLAINT varchar(200),
    PED_ROLE varchar(200),
    CONTRIBUTING_FACTOR_1 varchar(200),
    CONTRIBUTING_FACTOR_2 varchar(200),
    PERSON_SEX varchar(200)

  --  CONSTRAINT colision_persona_t FOREIGN KEY (PERSON_ID) REFERENCES PERSONAS(PERSON_ID),
  --  CONSTRAINT COLISION_VEHICULO_t FOREIGN KEY (VEHICLE_ID) REFERENCES vehicles(VEHICLE_ID)
);

create table if not exists vehicles_text(
    VEHICLE_ID TEXT NOT NULL,
    VEHICLE_YEAR TEXT,
    VEHICLE_TYPE TEXT,
    VEHICLE_MODEL TEXT,
    VEHICLE_MAKE TEXT
--    constraint vehicles_pk_t PRIMARY KEY (VEHICLE_ID)
);
CREATE TABLE IF NOT EXISTS accidentes_text --Le cambio el nombre
(
    CRASH_DATE varchar(200),
    CRASH_TIME time, -- varchar(200),
    BOROUGH VARCHAR(255),
    ZIP_CODE VARCHAR(30),
    LATITUDE VARCHAR(30),
    LONGITUDE VARCHAR(30),
    LOCATION VARCHAR(255),
    ON_STREET_NAME VARCHAR(255),
    CROSS_STREET_NAME VARCHAR(255),
    OFF_STREET_NAME VARCHAR(255),
    NUMBER_OF_PERSONS_INJURED VARCHAR(30),
    NUMBER_OF_PERSONS_KILLED VARCHAR(30),
    NUMBER_OF_PEDESTRIANS_INJURED VARCHAR(30),
    NUMBER_OF_PEDESTRIANS_KILLED VARCHAR(30),
    NUMBER_OF_CYCLIST_INJURED VARCHAR(30),
    NUMBER_OF_CYCLIST_KILLED VARCHAR(30),
    NUMBER_OF_MOTORIST_INJURED VARCHAR(30),
    NUMBER_OF_MOTORIST_KILLED VARCHAR(30),
    CONTRIBUTING_FACTOR_VEHICLE_1 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_2 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_3 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_4 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_5 VARCHAR(255),
    COLLISION_ID VARCHAR(200),
    VEHICLE_TYPE_CODE_1 varchar(200),
    VEHICLE_TYPE_CODE_2 varchar(200),
    VEHICLE_TYPE_CODE_3 varchar(200),
    VEHICLE_TYPE_CODE_4 varchar(200),
    VEHICLE_TYPE_CODE_5 varchar(200)
);

create table if not exists colision_vehicle_text(
    UNIQUE_ID varchar(200),
    COLISION_ID varchar(200),
    CRASH_DATE varchar(200),
    CRASH_TIME varchar(200),
    VEHICLE_ID varchar(200),
    STATE_REGISTRATION varchar(200),
    VEHICLE_TYPE varchar(200),
    VEHICLE_MAKE varchar(200),
    VEHICLE_MODEL varchar(200),
    VEHICLE_YEAR varchar(200),
    TRAVEL_DIRECTION varchar(200),
    VEHICLE_OCCUPANTS varchar(200),
    DRIVER_SEX varchar(200),
    DRIVER_LICENSE_STATUS varchar(200),
    DRIVER_LICENSE_JURISDICTION varchar(200),
    PRE_CRASH varchar(200),
    POINT_OF_IMPACT varchar(200),
    VEHICLE_DAMAGE varchar(200),
    VEHICLE_DAMAGE_1 varchar(200),
    VEHICLE_DAMAGE_2 varchar(200),
    VEHICLE_DAMAGE_3 varchar(200),
    PUBLIC_PROPERTY_DAMAGE varchar(1000),
    PUBLIC_PROPERTY_DAMAGE_TYPE varchar(1000),
    CONTRIBUTING_FACTOR_1 varchar(300),
    CONTRIBUTING_FACTOR_2 varchar(300)
);


create table if not exists personas(
    PERSON_ID CHAR(240) /*NOT NULL*/, -- Hay 36 carácteres en los que he visto, pero por si
    PERSON_SEX VARCHAR(1),
    PERSON_LASTNAME VARCHAR(255),
    PERSON_FIRSTNAME VARCHAR(255),
    PERSON_PHONE VARCHAR(255),
    PERSON_ADDRESS VARCHAR(255),
    PERSON_CITY VARCHAR(255),
    PERSON_STATE VARCHAR(255),
    PERSON_ZIP VARCHAR(255),
    PERSON_SSN VARCHAR(255),
    PERSON_DOB DATE--,
    --constraint person_pk PRIMARY KEY (PERSON_ID)
);

create table if not exists vehicles(
    VEHICLE_ID VARCHAR(256) NOT NULL,
    STATE_REGISTRATION VARCHAR(256),
    VEHICLE_TYPE VARCHAR(256),
    VEHICLE_MAKE VARCHAR(256),
    VEHICLE_MODEL VARCHAR(256),
    VEHICLE_YEAR INT--,
    --check(VEHICLE_YEAR > 1885), --> Es una chorrada, pero al parecer el primer vehiculo se creo en ese año: https://www.google.com/search?client=opera-gx&q=primer+automovil&sourceid=opera&ie=UTF-8&oe=UTF-8
    --constraint vehicles_pk PRIMARY KEY (VEHICLE_ID)
);
CREATE TABLE IF NOT EXISTS collision_persona(
    --UNIQUE_ID,COLLISION_ID,CRASH_DATE,CRASH_TIME,PERSON_ID,PERSON_TYPE,PERSON_INJURY,VEHICLE_ID,PERSON_AGE,EJECTION,EMOTIONAL_STATUS,BODILY_INJURY,POSITION_IN_VEHICLE,SAFETY_EQUIPMENT,PED_LOCATION,PED_ACTION,COMPLAINT,PED_ROLE,CONTRIBUTING_FACTOR_1,CONTRIBUTING_FACTOR_2,PERSON_SEX
    UNIQUE_ID INT,
    COLLISION_ID INT,
    PERSON_ID VARCHAR(240),
    PERSON_TYPE VARCHAR(250),
    PERSON_INJURY VARCHAR(250),
    VEHICLE_ID VARCHAR(240),
    PERSON_AGE INT /*, check (PERSON_AGE >0)*/,
    EJECTION VARCHAR(250),
    EMOTIONAL_STATUS VARCHAR(250),
    BODILY_INJURY VARCHAR(250),
    POSITION_IN_VEHICLE VARCHAR(250),
    SAFETY_EQUIPMENT VARCHAR(250),
    PED_LOCATION VARCHAR(250),
    PED_ACTION VARCHAR(250),
    COMPLAINT VARCHAR(255),
    PED_ROLE VARCHAR(250),
    CONTRIBUTING_FACTOR_1 VARCHAR(255),
    CONTRIBUTING_FACTOR_2 VARCHAR(255),
    PERSON_SEX VARCHAR(1)--,
    --CONSTRAINT colision_persona FOREIGN KEY (PERSON_ID) REFERENCES PERSONAS(PERSON_ID),
    --CONSTRAINT COLISION_VEHICULO FOREIGN KEY (VEHICLE_ID) REFERENCES vehicles(VEHICLE_ID)
);


CREATE TABLE IF NOT EXISTS accidentes --Le cambio el nombre
(
    CRASH_DATE varchar(200),
    CRASH_TIME varchar(200),
    BOROUGH VARCHAR(255),
    ZIP_CODE VARCHAR(30),
    LATITUDE DECIMAL(9,6),
    LONGITUDE DECIMAL(9,6),
    LOCATION VARCHAR(255),
    ON_STREET_NAME VARCHAR(255),
    CROSS_STREET_NAME VARCHAR(255),
    OFF_STREET_NAME VARCHAR(255),
    NUMBER_OF_PERSONS_INJURED INT,
    NUMBER_OF_PERSONS_KILLED INT,
    NUMBER_OF_PEDESTRIANS_INJURED INT,
    NUMBER_OF_PEDESTRIANS_KILLED INT,
    NUMBER_OF_CYCLIST_INJURED INT,
    NUMBER_OF_CYCLIST_KILLED INT,
    NUMBER_OF_MOTORIST_INJURED INT,
    NUMBER_OF_MOTORIST_KILLED INT,
    CONTRIBUTING_FACTOR_VEHICLE_1 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_2 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_3 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_4 VARCHAR(255),
    CONTRIBUTING_FACTOR_VEHICLE_5 VARCHAR(255),
    COLLISION_ID INT,
    --VEHICLE_ID VARCHAR(240),
    --PERSON_ID VARCHAR(240),
    VEHICLE_TYPE_CODE_1 varchar(200),
    VEHICLE_TYPE_CODE_2 varchar(200),
    VEHICLE_TYPE_CODE_3 varchar(200),
    VEHICLE_TYPE_CODE_4 varchar(200),
    VEHICLE_TYPE_CODE_5 varchar(200)

);


create table if not exists colision_vehicle(
    VEHICLE_ID VARCHAR(240),-- NOT NULL,
    COLLISION_ID INT,
    TRAVEL_DIRECTION VARCHAR(250),
    VEHICLE_OCCUPANTS INT,
    DRIVER_SEX VARCHAR(1),
    DRIVER_LICENSE_STATUS VARCHAR(250),
    DRIVER_LICENSE_JURISDICTION VARCHAR(250),
    PRE_CRASH VARCHAR(250),
    POINT_OF_IMPACT VARCHAR(250),
    VEHICLE_DAMAGE VARCHAR(255),
    VEHICLE_DAMAGE_1 VARCHAR(255),
    VEHICLE_DAMAGE_2 VARCHAR(255),
    VEHICLE_DAMAGE_3 VARCHAR(255),
    PUBLIC_PROPERTY_DAMAGE VARCHAR(1000),
    PUBLIC_PROPERTY_DAMAGE_TYPE VARCHAR(1000),
    CONTRIBUTING_FACTOR_1 VARCHAR(255),
    CONTRIBUTING_FACTOR_2 VARCHAR(255)/*,
    constraint COLISION_VEHICULO_pk PRIMARY KEY (VEHICLE_ID, PERSON_ID),
    constraint vehicles_fk foreign key (VEHICLE_ID) references PERSONAS(PERSON_ID),
    CONSTRAINT colision_persona FOREIGN KEY (PERSON_ID) REFERENCES PERSONAS(PERSON_ID)*/
);

COPY accidentes_text FROM 'C:\datos\Collisions_Crashes_20241020.csv' DELIMITER ',' CSV HEADER NULL '';
COPY vehicles_text FROM 'C:\datos\Vehicles.csv' DELIMITER ';' CSV HEADER NULL '';
COPY colision_vehicle_text FROM 'C:\datos\Collisions_Vehicles_20241020.csv' DELIMITER ',' CSV HEADER NULL '';
COPY collision_persona_text FROM 'C:\datos\Collisions_Person_20241020.csv' DELIMITER ',' CSV HEADER NULL '';
COPY personas from 'C:\datos\personas2.csv' DELIMITER ';' CSV HEADER NULL '';

insert into accidentes (
    CRASH_DATE,
    CRASH_TIME,
    BOROUGH,
    ZIP_CODE,
    LATITUDE,
    LONGITUDE,
    LOCATION,
    ON_STREET_NAME,
    CROSS_STREET_NAME,
    OFF_STREET_NAME,
    NUMBER_OF_PERSONS_INJURED,
    NUMBER_OF_PERSONS_KILLED,
    NUMBER_OF_PEDESTRIANS_INJURED,
    NUMBER_OF_PEDESTRIANS_KILLED,
    NUMBER_OF_CYCLIST_INJURED,
    NUMBER_OF_CYCLIST_KILLED,
    NUMBER_OF_MOTORIST_INJURED,
    NUMBER_OF_MOTORIST_KILLED,
    CONTRIBUTING_FACTOR_VEHICLE_1,
    CONTRIBUTING_FACTOR_VEHICLE_2,
    CONTRIBUTING_FACTOR_VEHICLE_3,
    CONTRIBUTING_FACTOR_VEHICLE_4,
    CONTRIBUTING_FACTOR_VEHICLE_5,
    COLLISION_ID,
    VEHICLE_TYPE_CODE_1,
    VEHICLE_TYPE_CODE_2,
    VEHICLE_TYPE_CODE_3,
    VEHICLE_TYPE_CODE_4,
    VEHICLE_TYPE_CODE_5
)
select
    CRASH_DATE,
    CRASH_TIME,
    BOROUGH,
    ZIP_CODE,
    cast(LATITUDE as DECIMAL(9,6)),
    cast(LONGITUDE as DECIMAL(9,6)),
    LOCATION,
    ON_STREET_NAME,
    CROSS_STREET_NAME,
    OFF_STREET_NAME,
    cast(NUMBER_OF_PERSONS_INJURED as INT),
    cast(NUMBER_OF_PERSONS_KILLED as INT),
    cast(NUMBER_OF_PEDESTRIANS_INJURED as INT),
    cast(NUMBER_OF_PEDESTRIANS_KILLED as INT),
    cast(NUMBER_OF_CYCLIST_INJURED as INT),
    cast(NUMBER_OF_CYCLIST_KILLED as INT),
    cast(NUMBER_OF_MOTORIST_INJURED as INT),
    cast(NUMBER_OF_MOTORIST_KILLED as INT),
    CONTRIBUTING_FACTOR_VEHICLE_1,
    CONTRIBUTING_FACTOR_VEHICLE_2,
    CONTRIBUTING_FACTOR_VEHICLE_3,
    CONTRIBUTING_FACTOR_VEHICLE_4,
    CONTRIBUTING_FACTOR_VEHICLE_5,
    cast(COLLISION_ID as int),
    VEHICLE_TYPE_CODE_1,
    VEHICLE_TYPE_CODE_2,
    VEHICLE_TYPE_CODE_3,
    VEHICLE_TYPE_CODE_4,
    VEHICLE_TYPE_CODE_5
from accidentes_text;

insert into vehicles (      select
                            VEHICLE_ID,
                            null,
                            VEHICLE_TYPE,
                            VEHICLE_MAKE,
                            VEHICLE_MODEL,
                            cast(VEHICLE_YEAR as INT)
                            from vehicles_text
                               );
/*insert into colision_vehicle (select VEHICLE_ID,TRAVEL_DIRECTION,cast(VEHICLE_OCCUPANTS as INT),DRIVER_SEX,DRIVER_LICENSE_STATUS,DRIVER_LICENSE_JURISDICTION,PRE_CRASH,POINT_OF_IMPACT,VEHICLE_DAMAGE,
                                     VEHICLE_DAMAGE_1,VEHICLE_DAMAGE_2,VEHICLE_DAMAGE_3,PUBLIC_PROPERTY_DAMAGE,PUBLIC_PROPERTY_DAMAGE_TYPE,CONTRIBUTING_FACTOR_1, CONTRIBUTING_FACTOR_2
                              from colision_vehicle_text
);*/
insert into colision_vehicle (
    select
    VEHICLE_ID,-- NOT NULL,
    cast(COLISION_ID as INT),
    TRAVEL_DIRECTION,
    cast(VEHICLE_OCCUPANTS as INT),
    DRIVER_SEX ,
    DRIVER_LICENSE_STATUS ,
    DRIVER_LICENSE_JURISDICTION,
    PRE_CRASH ,
    POINT_OF_IMPACT ,
    VEHICLE_DAMAGE ,
    VEHICLE_DAMAGE_1 ,
    VEHICLE_DAMAGE_2 ,
    VEHICLE_DAMAGE_3 ,
    PUBLIC_PROPERTY_DAMAGE ,
    PUBLIC_PROPERTY_DAMAGE_TYPE ,
    CONTRIBUTING_FACTOR_1 ,
    CONTRIBUTING_FACTOR_2
    from colision_vehicle_text
);

INSERT INTO collision_persona (
                               select
                               cast(UNIQUE_ID as INT),
                               cast(COLLISION_ID as INT),
                               PERSON_ID,
                               PERSON_TYPE,
                               PERSON_INJURY,
                               VEHICLE_ID,
                               cast(PERSON_AGE as INT),
                               EJECTION,
                               EMOTIONAL_STATUS,
                               BODILY_INJURY,
                               POSITION_IN_VEHICLE,
                               SAFETY_EQUIPMENT,
                               PED_LOCATION,
                               PED_ACTION,
                               COMPLAINT, PED_ROLE,
                               CONTRIBUTING_FACTOR_1,
                               CONTRIBUTING_FACTOR_2,
                               PERSON_SEX
                               from collision_persona_text);


drop table accidentes_text;
drop table vehicles_text;
drop table colision_vehicle_text;
drop table collision_persona_text;

--1 Mostrar los vehículos que han tenido más de un accidente
SELECT DISTINCT * FROM vehicles WHERE VEHICLE_ID IN (SELECT VEHICLE_ID FROM colision_vehicle GROUP BY vehicle_ID HAVING(count(*)>1));

SELECT VEHICLE_ID, count(*) FROM colision_vehicle GROUP BY vehicle_ID HAVING(count(*)>1);
--2. Mostrar todos los vehículos con una antigüedad de al menos 35 años.
select distinct * from vehicles where VEHICLE_YEAR<= (Select extract(year from now())) - 35;

--3. Mostrar el top 5 de las marcas de vehículos.
select vehicle_make, count(*) from vehicles group by vehicle_make order by count(*) desc limit 5;

-- 4 Mostrar los datos de aquellos conductores implicados en más de 1 accidente.
SELECT DISTINCT * FROM PERSONAS WHERE PERSON_ID IN (SELECT PERSON_ID FROM collision_persona GROUP BY PERSON_ID HAVING(count(*)>1));

-- 5. Mostrar los datos de los conductores con accidentes mayores de 65 años y menores de 26 ordenados ascendentemente.
SELECT * FROM PERSONAS WHERE AGE(PERSON_DOB) BETWEEN INTERVAL '18 years' AND INTERVAL '65 years' ORDER BY PERSON_DOB;

SELECT distinct PERSON_DOB,AGE(PERSON_DOB) FROM PERSONAS ORDER BY PERSON_DOB desc;

--6. Mostrar los datos de los conductores que tienen como vehículo un “Pickup”
--select personas.* from personas,accidentes,collision_persona where personas.PERSON_ID = collision_persona.PERSON_ID and collision_persona.COLLISION_ID = accidentes.COLLISION_ID and accidentes.VEHICLE_TYPE_CODE_3 like '%Pick-up%';

    SELECT personas.* 
    FROM personas
    JOIN collision_persona ON personas.PERSON_ID = collision_persona.PERSON_ID
    JOIN accidentes ON collision_persona.COLLISION_ID = accidentes.COLLISION_ID
    WHERE accidentes.VEHICLE_TYPE_CODE_3 LIKE '%Pick-up%';



--7. Mostrar las 3 marcas de vehículos que sufren menos accidentes. De igual manera mostrar los 3 tipos de vehículo que menos accidentes sufren.
SELECT VEHICLE_MAKE, COUNT(*) AS accident_count FROM vehicles WHERE VEHICLE_ID IN (
SELECT VEHICLE_ID FROM colision_vehicle) GROUP BY VEHICLE_MAKE ORDER BY accident_count ASC LIMIT 3;


--SELECT VEHICLE_TYPE, COUNT(*) AS accident_count FROM vehicles WHERE VEHICLE_ID IN (SELECT VEHICLE_ID FROM colision_vehicle) GROUP BY VEHICLE_TYPE ORDER BY accident_count ASC LIMIT 3;

-- 8. Mostrar el numero de accidentes que ha sufrido cada marca.
SELECT VEHICLE_MAKE, COUNT(*) AS accident_count FROM vehicles WHERE VEHICLE_ID IN (SELECT VEHICLE_ID FROM colision_vehicle) GROUP BY VEHICLE_MAKE ORDER BY accident_count DESC;

--9. Mostrar la procedencia de los conductores que han sufrido accidentes.
SELECT PERSON_CITY, PERSON_STATE, COUNT(*) AS accident_count FROM PERSONAS WHERE PERSON_ID IN ( SELECT PERSON_ID FROM COLLISION_PERSONA) GROUP BY PERSON_CITY, PERSON_STATE ORDER BY accident_count DESC;

-- 10. Mostrar el numero de accidentes de los vehículos por estado de matriculación.
SELECT STATE_REGISTRATION, COUNT(*) AS accident_count FROM vehicles WHERE VEHICLE_ID IN (SELECT VEHICLE_ID FROM colision_vehicle) GROUP BY STATE_REGISTRATION ORDER BY accident_count DESC;

