CREATE TABLE Producto(
    ProductoId INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(70),
    UnidadId INTEGER,
    ProveedorId INTEGER,
    PrecioId INTEGER,
    SucursalId INTEGER

);

CREATE TABLE Proveedor(
    ProveedorId INTEGER AUTO_INCREMENT PRIMARY KEY,
    NombreProveedor VARCHAR(100),
    Telefono VARCHAR(20),
    Direccion VARCHAR(200)
);

CREATE TABLE Precio(
PrecioId INTEGER AUTO_INCREMENT PRIMARY KEY,
PrecioCompra DECIMAL,
PrecioVenta DECIMAL
);

CREATE TABLE Unidad(
    UnidadId INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(50)
);


CREATE TABLE Sucursal(
    Sucursal INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Direccion VARCHAR(100),
    Encargado VARCHAR(100),
);

INSERT INTO Producto (Nombre, Descripcion, UnidadId, ProveedorId, PrecioId, SucursalId) VALUES
('Laptop Dell', 'Laptop empresarial 14 pulgadas', 1, 1, 1, 1),
('Mouse Logitech', 'Mouse inalámbrico ergonómico', 1, 2, 2, 2),
('Teclado Mecánico', 'Teclado mecánico retroiluminado', 1, 3, 3, 3),
('Monitor Samsung', 'Monitor LED 24 pulgadas Full HD', 1, 4, 4, 4),
('Impresora HP', 'Impresora multifuncional WiFi', 1, 5, 5, 5);


INSERT INTO Unidad (Nombre, Descripcion) VALUES
('Pieza', 'Unidad individual'),
('Caja', 'Caja con varias unidades'),
('Paquete', 'Paquete sellado'),
('Kilogramo', 'Medido por peso'),
('Litro', 'Medido por volumen');


INSERT INTO Proveedor (NombreProveedor, Telefono, Direccion) VALUES
('Distribuidora Tecnológica S.A.', '555-1234', 'Av. Reforma 123, Ciudad Central'),
('Suministros Globales SRL', '555-5678', 'Calle Industria 456, Zona Norte'),
('ElectroMayorista LTDA', '555-9012', 'Boulevard Comercial 789, Centro'),
('Importaciones del Sur', '555-3456', 'Av. Libertad 321, Zona Sur'),
('Proveedora Integral MX', '555-7890', 'Calle Principal 654, Col. Moderna');

INSERT INTO Precio (PrecioCompra, PrecioVenta) VALUES
(850.00, 999.99),
(15.50, 25.00),
(45.00, 79.99),
(120.00, 179.99),
(230.00, 299.99);

INSERT INTO Unidad (Nombre, Descripcion) VALUES
('Pieza', 'Unidad individual'),
('Caja', 'Caja con varias unidades'),
('Paquete', 'Paquete sellado'),
('Kilogramo', 'Medido por peso'),
('Litro', 'Medido por volumen');


INSERT INTO Sucursal (Nombre, Direccion, Encargado) VALUES
('Sucursal Centro', 'Av. Principal 100, Centro', 'Carlos Martínez'),
('Sucursal Norte', 'Calle Norte 250, Zona Norte', 'Ana López'),
('Sucursal Sur', 'Av. Sur 789, Zona Sur', 'Luis Fernández'),
('Sucursal Este', 'Boulevard Este 456, Zona Este', 'María Torres'),
('Sucursal Oeste', 'Calle Poniente 321, Zona Oeste', 'Jorge Ramírez');


SELECT P.Nombre , PR.NombreProveedor
FROM Proveedor PR
JOIN Producto P
ON PR.ProveedorId = PR.ProveedorId;

SELECT PR.Nombre , PV.NombreProveedor , PC.PrecioCompra
FROM Producto PR 
JOIN Proveedor PV
ON PR.ProveedorId = PV.ProveedorId
JOIN Precio PC
ON PR.PrecioId = PC.PrecioId;