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
SET nombre = @nombre, capacidad= @capacidad,fecha_inicio=@fecha_inicio,provincia=@provincia,canton=@canton,distrito=@distrito, adquirido=@adquirido,fecha_fin=@fecha_fin
WHERE edificio.id = @id;
end