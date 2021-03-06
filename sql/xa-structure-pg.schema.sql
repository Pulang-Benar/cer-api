CREATE DATABASE cer
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE SCHEMA security
    AUTHORIZATION postgres;
CREATE SCHEMA master
    AUTHORIZATION postgres;
CREATE SCHEMA workflow
    AUTHORIZATION postgres;
CREATE SCHEMA "file"
    AUTHORIZATION postgres;
CREATE SCHEMA notification
    AUTHORIZATION postgres;
CREATE SCHEMA panic
    AUTHORIZATION postgres;