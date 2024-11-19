CREATE DATABASE PECL2A;



CREATE TABLE  IF NOT EXISTS PERSONAS
(
    PERSON_ID CHAR(40) NOT NULL, -- Hay 36 carácteres en los que he visto, pero por si
    PERSON_SEX VARCHAR(1),
    PERSON_LASTNAME VARCHAR(255),
    PERSON_FIRSTNAME VARCHAR(255),
    PERSON_PHONE VARCHAR(20),
    PERSON_ADDRESS VARCHAR(255),
    PERSON_CITY VARCHAR(20),
    PERSON_STATE VARCHAR(20),
    PERSON_ZIP VARCHAR(5),
    PERSON_SSN VARCHAR(11),
    PERSON_DOB DATE
);
CREATE TABLE IF NOT EXISTS ACCIDENTES --Le cambio el nombre
(
    CRASH_DATE DATE NOT NULL,
    CRASH_TIME TIME NOT NULL,
    BOROUGH VARCHAR(255),
    ZIP_CODE VARCHAR(5) UNIQUE, -- Creo que no debería ser único, en un mismo pueblo pueden ocurrit muchos accidentes no?
    LATITUDE DECIMAL(9,6),
    LONGITUDE DECIMAL(9,6),
    LOCATION VARCHAR(255) NOT NULL,
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
    CONTRIBUTING_FACTOR_VEHICLE_5 VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS COLLISION_PERSONA
(
    PERSON_ID VARCHAR(40) NOT NULL,
    PERSON_TYPE VARCHAR(50),
    PERSON_INJURY VARCHAR(50),
    VEHICLE_ID VARCHAR(40) NOT NULL,
    PERSON_AGE INT, check (PERSON_AGE >0),
    EJECTION VARCHAR(50),
    EMOTIONAL_STATUS VARCHAR(50),
    BODILY_INJURY VARCHAR(50),
    POSITION_IN_VEHICLE VARCHAR(50),
    SAFETY_EQUIPMENT VARCHAR(50),
    PED_LOCATION VARCHAR(50),
    PED_ACTION VARCHAR(50),
    COMPLAINT VARCHAR(255),
    PED_ROLE VARCHAR(50),
    CONTRIBUTING_FACTOR_1 VARCHAR(255),
    CONTRIBUTING_FACTOR_2 VARCHAR(255),
    PERSON_SEX VARCHAR(1),
    CONSTRAINT colision_persona FOREIGN KEY (PERSON_ID) REFERENCES PERSONAS(PERSON_ID)
);



create table if not exists vehicles(
    VEHICLE_ID VARCHAR(40) NOT NULL,
    STATE_REGISTRATION VARCHAR(50) not null,
    VEHICLE_TYPE VARCHAR(50),
    VEHICLE_MAKE VARCHAR(50),
    VEHICLE_MODEL VARCHAR(50),
    VEHICLE_YEAR INT,
    check(VEHICLE_YEAR > 1885), --> Es una chorrada, pero al parecer el primer vehiculo se creo en ese año: https://www.google.com/search?client=opera-gx&q=primer+automovil&sourceid=opera&ie=UTF-8&oe=UTF-8
    constraint vehicles_pk PRIMARY KEY (VEHICLE_ID)
);

create table if not exists COLISION_VEHICULO(
    VEHICLE_ID VARCHAR(40) NOT NULL,
    PERSON_ID VARCHAR(40) not null ,
    TRAVEL_DIRECTION VARCHAR(50),
    VEHICLE_OCCUPANTS INT,
    DRIVER_SEX VARCHAR(1),
    DRIVER_LICENSE_STATUS VARCHAR(50),
    DRIVER_LICENSE_JURISDICTION VARCHAR(50),
    PRE_CRASH VARCHAR(50),
    POINT_OF_IMPACT VARCHAR(50),
    VEHICLE_DAMAGE VARCHAR(255),
    VEHICLE_DAMAGE_1 VARCHAR(255),
    VEHICLE_DAMAGE_2 VARCHAR(255),
    VEHICLE_DAMAGE_3 VARCHAR(255),
    PUBLIC_PROPERTY_DAMAGE VARCHAR(255),
    PUBLIC_PROPERTY_DAMAGE_TYPE VARCHAR(255),
    CONTRIBUTING_FACTOR_1 VARCHAR(255),
    CONTRIBUTING_FACTOR_2 VARCHAR(255),

    constraint COLISION_VEHICULO_pk PRIMARY KEY (VEHICLE_ID, PERSON_ID),
    constraint vehicles_fk foreign key (VEHICLE_ID) references PERSONAS(PERSON_ID),
    CONSTRAINT colision_persona FOREIGN KEY (PERSON_ID) REFERENCES PERSONAS(PERSON_ID)
);