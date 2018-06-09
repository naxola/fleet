/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Usuario
 * Created: 08-jun-2018
 */

CREATE DATABASE IF NOT EXISTS fleet_mngment;
USE fleet_mngment;

CREATE TABLE users(
id      int(255) auto_increment NOT NULL,
role    varchar(20),
name    varchar(255),
surname varchar(255),
email   varchar(255),
password    varchar(255),
image       varchar(255),
created_at  datetime DEFAULT NULL,
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE sociedades(
id              int(255) auto_increment not null,
name            varchar(255),
CONSTRAINT pk_sociedades PRIMARY KEY(id)
) ENGINE=InnoDb;

CREATE TABLE proveedores(
id              int(255) auto_increment not null,
name            varchar(255),
CONSTRAINT pk_sociedades PRIMARY KEY(id)
) ENGINE=InnoDb;

CREATE TABLE contratos(
id              int(255) auto_increment not null,
proveedor_id    int(255) not null,
sociedad_id     int(255) not null,
fecha_inicio    datetime,
fecha_fin       datetime,
cuota           float(10),
created_at      datetime DEFAULT NULL,
CONSTRAINT pk_contratos PRIMARY KEY(id),
CONSTRAINT fk_proveedores FOREIGN KEY(proveedor_id) REFERENCES proveedores(id),
CONSTRAINT fk_sociedades FOREIGN KEY(sociedad_id) REFERENCES sociedades(id),
)ENGINE=InnoDb;