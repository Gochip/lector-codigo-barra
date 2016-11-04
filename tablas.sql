CREATE DATABASE estacionamiento;
USE estacionamiento;

CREATE TABLE clientes(
    id VARCHAR(100),
    nombre VARCHAR(100),
    apellido VARCHAR(100)
);
CREATE TABLE pagos(
    id INT NOT NULL AUTO_INCREMENT,
    fecha_pago DATETIME,
    fecha_vencimiento DATETIME,
    id_cliente VARCHAR(100),
    activo BOOLEAN,
    PRIMARY KEY(id)
);

INSERT INTO clientes (id, nombre, apellido) VALUES ('0007161284', 'Germán', 'Parisi');

INSERT INTO pagos (fecha_pago, fecha_vencimiento, id_cliente, activo)
VALUES ('2016-07-08 18:05:30', '2016-08-08 18:05:30', '0007161284', FALSE);

INSERT INTO pagos (fecha_pago, fecha_vencimiento, id_cliente, activo)
VALUES ('2016-08-07 17:41:30', '2016-09-08 18:05:30', '0007161284', FALSE);

INSERT INTO pagos (fecha_pago, fecha_vencimiento, id_cliente, activo)
VALUES ('2016-09-06 16:47:20', '2016-10-08 18:05:30', '0007161284', FALSE);

INSERT INTO pagos (fecha_pago, fecha_vencimiento, id_cliente, activo)
VALUES ('2016-10-07 17:41:30', '2016-11-08 18:05:30', '0007161284', TRUE);

