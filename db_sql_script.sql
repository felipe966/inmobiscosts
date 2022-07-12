
CREATE DATABASE [db];

CREATE TABLE [dbo].[edificio] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [nombre]       VARCHAR (50) NOT NULL,
    [capacidad]    INT          DEFAULT ((0)) NOT NULL,
    [fecha_inicio] DATE         NOT NULL,
    [provincia]    VARCHAR (50) NOT NULL,
    [canton]       VARCHAR (50) NOT NULL,
    [distrito]     VARCHAR (50) NOT NULL,
    [adquirido]    VARCHAR (15) NULL,
    [fecha_fin]    DATE         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[servicio] (
    [Id]             INT          IDENTITY (1, 1) NOT NULL,
    [nombre_empresa] VARCHAR (50) NOT NULL,
    [tipo_id]        INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([tipo_id]) REFERENCES [dbo].[tipo_servicio] ([Id])
);

CREATE TABLE [dbo].[servicio_edificio] (
    [Id]          INT     IDENTITY (1, 1) NOT NULL,
    [servicio_id] INT     NOT NULL,
    [edificio_id] INT     NOT NULL,
    [fecha_corte] TINYINT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([servicio_id]) REFERENCES [dbo].[servicio] ([Id]),
    FOREIGN KEY ([edificio_id]) REFERENCES [dbo].[edificio] ([Id]),
    CHECK ([fecha_corte]>=(1) AND [fecha_corte]<=(30))
);

CREATE TABLE [dbo].[tipo_servicio] (
    [Id]            INT          IDENTITY (1, 1) NOT NULL,
    [nombre]        VARCHAR (50) NOT NULL,
    [unidad_medida] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

create procedure ConsultarEdificios
as 
begin
select * from edificio
end;

create procedure ConsultarServicios
as 
begin
select * from servicio
end;


create procedure ConsultarServiciosEdificios
as 
begin
select * from servicio_edificio
end;


create procedure ConsultarTiposServicio
as 
begin
select * from tipo_servicio
end;

create procedure EditarEdificio
@id int,
@nombre varchar(50),
@capacidad int,
@fecha_inicio date,
@provincia varchar(50),
@canton varchar(50),
@distrito varchar(50),
@adquirido bit,
@fecha_fin date

as 
begin
UPDATE edificio
SET nombre=@nombre,capacidad=@capacidad,fecha_inicio=@fecha_inicio,provincia=@provincia,canton=@canton,distrito=@distrito,adquirido=@adquirido,fecha_fin=@fecha_fin
WHERE edificio.id = @id;
end;

create procedure EditarServicio
@id int,
@nombre_empresa varchar(50),
@tipo_id int

as 
begin
UPDATE servicio
SET nombre_empresa=@nombre_empresa,tipo_id=@tipo_id
WHERE servicio.id = @id;
end;

create procedure EditarServicioEdificio
@id int,
@servicio_id int,
@edificio_id int,
@fecha_corte tinyint


as 
begin
UPDATE servicio_edificio
SET servicio_id=@servicio_id, edificio_id=@edificio_id, fecha_corte=@fecha_corte
WHERE servicio_edificio.id = @id;
end;

CREATE PROCEDURE EliminarServicioEdificio
	@id int 
AS
begin
DELETE FROM servicio_edificio WHERE id=@id;
end;

CREATE procedure GetAllServiciosEdificio


as 
begin
SELECT se.Id,ed.nombre,ts.nombre,s.nombre_empresa,se.fecha_corte
FROM servicio_edificio AS se
INNER JOIN servicio AS s
    ON se.servicio_id = s.id
INNER JOIN tipo_servicio AS ts
    ON s.tipo_id = ts.Id
INNER JOIN edificio as ed
	on se.edificio_id=ed.Id;

end;

CREATE PROCEDURE GetEdificio
	@id int 



as 
begin
select * from edificio 
where edificio.id =@id;
end;

CREATE PROCEDURE GetServicio
	@id int 



as 
begin
select * from servicio 
where servicio.id =@id;
end;

CREATE PROCEDURE GetServicioByTipoID
	@id int 



as 
begin
select * from servicio 
where servicio.tipo_id =@id;
end;

CREATE PROCEDURE GetServicioEdificioByEdificioID
	@id int 



as 
begin
select * from servicio_edificio 
where servicio_edificio.edificio_id =@id;
end;


CREATE PROCEDURE GetServicioEdificioByServicioId
	@id int 



as 
begin
select * from servicio_edificio 
where servicio_edificio.servicio_id =@id;
end;
CREATE procedure GetServiciosEdificio
@id int

as 
begin
SELECT se.Id,ed.nombre,ts.nombre,s.nombre_empresa,se.fecha_corte
FROM servicio_edificio AS se
INNER JOIN servicio AS s
    ON se.servicio_id = s.id
INNER JOIN tipo_servicio AS ts
    ON s.tipo_id = ts.Id
INNER JOIN edificio as ed
	on se.edificio_id=ed.Id
WHERE edificio_id=@id;

end;


CREATE PROCEDURE GetTipoServicio
	@id int 



as 
begin
select * from tipo_servicio 
where tipo_servicio.id =@id;
end;

CREATE procedure GuardarEdificio
@nombre varchar(50),
@capacidad int,
@fecha_inicio date,
@provincia varchar(50),
@canton varchar(50),
@distrito varchar(50),
@adquirido varchar(15),
@fecha_fin date

as 
begin
insert into edificio(nombre,capacidad,fecha_inicio,provincia,canton,distrito,adquirido,fecha_fin)
values(@nombre,@capacidad,@fecha_inicio,@provincia,@canton,@distrito,@adquirido,@fecha_fin)
end;


create procedure GuardarServicio
@nombre_empresa varchar(50),
@tipo_id int

as 
begin
insert into servicio(nombre_empresa,tipo_id)
values(@nombre_empresa,@tipo_id)
end;

create procedure GuardarServicioEdificio
@servicio_id int,
@edificio_id int,
@fecha_corte tinyint

as 
begin
insert into servicio_edificio(servicio_id,edificio_id,fecha_corte)
values(@servicio_id,@edificio_id,@fecha_corte)
end;

CREATE procedure GuardarTipoServicio
@nombre varchar(50),
@unidad_medida varchar(50)

as 
begin
insert into tipo_servicio(nombre,unidad_medida)
values(@nombre,@unidad_medida)
end;


