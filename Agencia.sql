
CREATE TABLE Auto (
    AutoId INTEGER PRIMARY KEY,
    Marca VARCHAR(100),
    Modelo VARCHAR(100),
    Año INTEGER,
    Precio INTEGER,
    NumSerie VARCHAR(100),
    Color VARCHAR(100),
    Kilometraje INTEGER,
    Estado VARCHAR(100),
    TipoCombustible VARCHAR(100)
);


CREATE TABLE Cliente (
    ClienteId INTEGER PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Direccion VARCHAR(100),
    Telefono VARCHAR(100),
    CorreoElectronico VARCHAR(100),
    FechaNacimiento DATE,
    Genero VARCHAR(100),
    EstadoCivil VARCHAR(100)
);


CREATE TABLE AgenteDeVenta (
    AgenteId INTEGER PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    CorreoElectronico VARCHAR(100),
    Telefono VARCHAR(100),
    Departamento VARCHAR(100),
    Nivel VARCHAR(100),
    FechaContratacion DATE
);


CREATE TABLE Venta (
    VentaId INTEGER PRIMARY KEY,
    Fecha DATE,
    AutoId INTEGER,
    ClienteId INTEGER,
    AgenteId INTEGER,
    PrecioFinal INTEGER,
    MetodoPago VARCHAR(100),
    EstadoTransaccion VARCHAR(100),
    Comentarios VARCHAR(100),
    FOREIGN KEY (AutoId) REFERENCES Auto(AutoId),
    FOREIGN KEY (ClienteId) REFERENCES Cliente(ClienteId),
    FOREIGN KEY (AgenteId) REFERENCES AgenteDeVenta(AgenteId)
);

