insert into familia (Nombre) Values ("Asteraceae"),("Acanthaceae"), ("Aizoaceae"), ("Alliaceae"),("Amaranthaceae"),("Amaryllidaceae");
insert into genero (Nombre) Values ("Cichorium"), ("Cynara"),("Lactuca"), ("Scorzonera"),("Tragopogon"),("Criss");
insert into especie (Nombre) Values ("Endivia"), ("Intybus"),("Cardunculus"),("Scolymus"),
("Lactuca sativa L"),("Scorzonera hispanica L"), ("Tragopogon porrifolius L");	
insert into familiaXgenero(IdGenero,IdFamilia) Values (1,1),(2,1),(3,1),(4,1),(5,1);
insert into familia (Nombre)Values ("cricri");
insert into familiaXgenero(IdGenero,IdFamilia) Values (1,7),(2,7),(3,7),(4,7),(5,7);

insert into familiaXgenero(IdGenero,IdFamilia)values(6,2);

insert into familiaXgenero(IdGenero,IdFamilia)VALUES(6,8);	

insert into especieXgenero(IdEspecie,IdFamiliaXgenero,Autoria,Sinonimias) Values (1,1,"Autoria","Sinonimias"),(2,1,"Autoria","Sinonimias"),
(3,2,"Autoria","Sinonimias"),(4,2,"Autoria","Sinonimias"),(5,3,"Autoria","Sinonimias"),(6,4,"Autoria","Sinonimias"), (7,5,"Autoria","Sinonimias");	
insert into colector (Nombre) Values("Crisia Piedra Chaves");
insert into validador(Nombre)Values("Yulian Ulloa Porras");
insert into especieXgenero(IdEspecie,IdFamiliaXgenero,Autoria,Sinonimias) Values(8,17,"Autoria","Sinonimias"),(4,2,"Autoria","Sinonimias");


/*insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70606,1,1,1,"Zona de los santos","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","143");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70607,1,1,1,"Ujarras Cartago","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","144");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70608,1,1,1,"Buenos Aires de Puntarenas","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","145");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70609,1,1,1,"Las praderas","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","146");	

-------------
insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70606,1,1,2,"Limon cerca de matina","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","147");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70607,1,1,2,"Cipreses de Cartago","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","148");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70608,1,1,2,"Playa hermosa cerca del arrecife","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","149");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70609,1,1,2,"Batan de Limon","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","150");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70608,1,1,3,"Rio Azul","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","151");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70609,1,1,3,"Tamarindo","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","152");	

insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
Values(70609,1,1,7,"Tamarindo","200m","100m","50m", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,"Esta es una de las plantas del sur","152");	

INSERT into fertilidad(Nombre) values("Flores"),("Frutos"),("Muestra Esteril");





insert into Imagen (IdMuestra,Nombre,Url) Values(1,"img1", "localhost:8080/android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(2,"img1", "localhost:8080/android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(3,"img1", "localhost:8080/android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(4,"img1", "localhost:8080/android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(5,"img1", "localhost:8080/android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(6,"img1", "localhost:8080/android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(7,"img1", "localhost:8080/android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(8,"img1", "localhost:8080/android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(9,"img1", "localhost:8080/android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(10,"img1", "localhost:8080/android/img/img2.jpg");
Canton (ProvinciaId,Nombre,Area,Poblacion)*/

-----------------------------------------------------------------------------------------------------------------------------------
drop procedure buscarFamilia;
delimiter //
create procedure buscarFamilia()
begin
	select Nombre from familia ;
	
end //
delimiter ;
call buscarFamilia();

drop procedure buscarFamilia_Genero;
delimiter //
create procedure buscarFamilia_Genero(nombreFamilia varchar(126))
begin
	select ge.Nombre from genero ge
	inner join familiaXgenero fxg on fxg.IdGenero = ge.Id 
	inner join familia fa on fa.Id = fxg.IdFamilia
	where  fa.Nombre = nombreFamilia;	
end //
delimiter ;
call buscarFamilia_Genero("Asteraceae");

drop procedure buscarFamilia_Genero_Especie;
delimiter //
create procedure buscarFamilia_Genero_Especie(nombreFamilia varchar(126),nombreGenero varchar(126))
begin
	select es.Nombre from especie es 
	inner join especieXgenero exg on exg.IdEspecie=es.Id
	inner join familiaXgenero fxg on fxg.Id=exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join genero ge on ge.Id = fxg.IdGenero
	where ge.Nombre=nombreGenero and fa.Nombre=nombreFamilia;	
end //
delimiter ;
call buscarFamilia_Genero_Especie("Asteraceae","Lactuca");
call buscarFamilia_Genero_Especie("Asteraceae","Cynara");
call buscarFamilia_Genero_Especie("Asteraceae","Cichorium");


drop procedure buscarFamilia_Genero_Especie_Codigo;
delimiter //
create procedure buscarFamilia_Genero_Especie_Codigo(nombreFamilia varchar(126),nombreGenero varchar(126),nombreEspecie varchar(126))
begin
	select mu.codigo from muestra mu
	inner join especieXgenero exg on exg.Id=mu.IdEspecieXgenero
	inner join familiaXgenero fxg on fxg.Id= exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join especie es on es.Id=exg.IdEspecie
	inner join genero ge on ge.Id = fxg.IdGenero
	where fa.Nombre=nombreFamilia  and ge.Nombre=nombreGenero  and es.Nombre=nombreEspecie;

end //
delimiter ;
call buscarFamilia_Genero_Especie_Codigo("Asteraceae","Lactuca","Lactuca sativa L");
call buscarFamilia_Genero_Especie_Codigo("Asteraceae","Cichorium","Cichorium endivia L");


drop procedure mostrarMuestra;
delimiter //
create procedure mostrarMuestra(nombreFamilia varchar(126),nombreGenero varchar(126), nombreEspecie varchar(126), codigo varchar(45))
begin
	select  mu.codigo, fa.Nombre as "Familia", ge.Nombre as "Genero", es.Nombre as "Especie", pr.Nombre as "Provincia",ca.Nombre as "Canton", di.Nombre as "Distrito",mu.Localidad, mu.Nota,mu.Longitud,mu.Latitud,mu.Altitud,im.Url from muestra mu 
	inner join especieXgenero exg on exg.Id=mu.IdEspecieXgenero
	inner join familiaXgenero fxg on fxg.Id= exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join especie es on es.Id=exg.IdEspecie
	inner join genero ge on ge.Id = fxg.IdGenero
	inner join imagen im on im.IdMuestra = mu.Id
	inner join distrito di on di.Id= mu.IdDistrito
	inner join canton ca on  ca.Id = di.CantonId
	inner join provincia pr on pr.Id= ca.ProvinciaId
	where fa.Nombre=nombreFamilia  and ge.Nombre=nombreGenero  and es.Nombre=nombreEspecie and mu.codigo=codigo;
end //
delimiter ;
call mostrarMuestra("Asteraceae","Cichorium","endivia","143");


delimiter //
create  procedure usuario(pUser varchar(32))
begin

	select * from usuario u where u.usuario = pUser;

end //
delimiter ;
----------------------------------------------------------
----------------------------------------------------------
delimiter //
create  procedure usuarioById(pId int)
BEGIN

	select * from Usuario u where u.Id = pId;

END //
delimiter ;
--------------------------------------------------------
--------------------------------------------------------

DROP PROCEDURE usuarios;
delimiter //
create  procedure usuarios()
BEGIN
	
	select * from Usuario;

END //
delimiter ;
--------------------------------------------------------
--------------------------------------------------------

delimiter //
CREATE PROCEDURE provincias()
BEGIN

	select * from Provincia;

END //
delimiter ;
--------------------------------------------------------
------------------------------------------------------
delimiter //
CREATE PROCEDURE cantones(nombre varchar(50))
BEGIN

	select c.nombre from Canton c
	inner join Provincia p On p.Id=c.provinciaId
    where p.Nombre = Nombre;

END //
delimiter ;

delimiter //
CREATE PROCEDURE distritos(nombreP varchar(50), nombreC varchar(50))
BEGIN

	select d.Nombre from Distrito d
	inner join Canton c On c.Id=d.CantonId
	inner join Provincia p On p.Id=c.provinciaId
    where p.Nombre = nombreP and c.Nombre=nombreC;

END //
delimiter ;
call distritos("Cartago", "Paraíso");
--------------------------------------------------------------------------
---------------------------------------------------------------------------
delimiter //
CREATE PROCEDURE fertilidad()
BEGIN

	select Nombre from Fertilidad ;

END //
delimiter ;
---------------------------------------------------------------------------
-----------------------------------------------------------------------------
delimiter //
CREATE PROCEDURE obtenerColector()
BEGIN

	select Nombre from Colector ;

END //
delimiter ;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
delimiter //
CREATE PROCEDURE obtenerValidador()
BEGIN

	select Nombre from Validador ;

END //
delimiter ;

-----------------------------------------------------------------------
-----------------------------------------------------------------------
drop procedure ingresarMuestra;
delimiter //
create procedure ingresarMuestra(nombreFamilia varchar(126) ,nombreGenero varchar(126), 
	nombreEspecie varchar(126), nombreValidador varchar(100), nombreColector varchar(100),
	nombreProvincia varchar(126),nombreCanton varchar(126), nombreDistrito varchar(126), 
	pLocalidad varchar(500), pLatitud varchar(50), pLongitud varchar(50), pAltitud varchar(50), pNota varchar(500))
begin
	declare idDistrito int;
	declare idColector int;
	declare idValidador int;
	declare idEspecieXgenero int;


	select di.Id from distrito di 
	inner join canton ca on ca.Id = di.CantonId
	inner join provincia pr on pr.Id=ca.ProvinciaId
	where pr.Nombre = nombreProvincia COLLATE utf8_unicode_ci and ca.Nombre=nombreCanton COLLATE utf8_unicode_ci and di.Nombre=nombreDistrito COLLATE utf8_unicode_ci into idDistrito ;


	select Id from colector where Nombre = nombreColector COLLATE utf8_unicode_ci into idColector;
	select Id from validador where Nombre = nombreValidador COLLATE utf8_unicode_ci into idValidador;

	select exg.Id from especieXgenero exg
	inner join especie es on es.Id=exg.IdEspecie
	inner join familiaXgenero fxg on fxg.Id=exg.IdFamiliaXgenero
	inner join familia fa on fa.Id=fxg.IdFamilia
	inner join genero ge on ge.Id = fxg.IdGenero
	where fa.Nombre=nombreFamilia COLLATE utf8_unicode_ci and ge.Nombre=nombreGenero COLLATE utf8_unicode_ci and es.Nombre=nombreEspecie COLLATE utf8_unicode_ci into idEspecieXgenero;

	select idDistrito, idColector, idValidador, idEspecieXgenero;
	IF (idDistrito is not null) and (idColector is not null) and (idValidador is not null) and (idEspecieXgenero is not null)
	Then
		insert into Muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,
		FechaColecto,nota) values(idDistrito,idColector,idValidador,idEspecieXgenero,pLocalidad,pLatitud,pLongitud,pAltitud,
		CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,pNota);
		SELECT id as "MuestraID" FROM Muestra ORDER BY id DESC LIMIT 1;
	
    end IF;


end //
delimiter ;
$provincia = "San Jose";
$canton = "San Jose";
$distrito = "Carmen";
$familia = "Asteraceae";
$genero = "Cichorium";
$especie = "Endivia";
$colector = "Crisia Piedra Chaves";
$validador = "Yulian Ulloa Porras";
$fecha = "1970-01-01 00:00:00";
$nota = "Nota";
$localidad = "localidad";
$latitud = "latitud";
$longitud = "longitud";
$altitud = "altitud";

call ingresarMuestra("Asteraceae","Cichorium","Endivia","Yulian Ulloa Porras","Crisia Piedra Chaves","San Jose","San Jose","Carmen",
"localidad","latitud","longitud","altitud","Nota");
call mostrarMuestra("Asteraceae","Cichorium","endivia","143");
-----------------------------------------------------------------
-----------------------------------------------------------------

compile 'com.squareup.picasso:picasso:2.5.2'




--------------------------------------------------------------------------
---------------------------------------------------------------------------
------------------------------------------------------------------------
INSERT INTO `Provincia` VALUES ('1', 'San José');
INSERT INTO `Provincia` VALUES ('2', 'Alajuela');
INSERT INTO `Provincia` VALUES ('3', 'Cartago');
INSERT INTO `Provincia` VALUES ('4', 'Heredia');
INSERT INTO `Provincia` VALUES ('5', 'Guancaste');
INSERT INTO `Provincia` VALUES ('6', 'Puntarenas');
INSERT INTO `Provincia` VALUES ('7', 'Limón');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'San José', '44', '352366');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES ( 1, 'Escazú', '34.49', '60201');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES ( 1, 'Desamparados', '118.26', '221346');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Puriscal', '553.66', '32767');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Tarrazú', '297.5', '16419');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Aserrí', '167.1', '56422');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Mora', '162.04', '24333');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES ( 1, 'Goicoechea', '31.5', '131529');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Santa Ana', '61.42', '39905');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Alajuelita', '21.17', '81721');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Vázquez de Coronado', '222.2', '63098');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Acosta', '342.24', '20906');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Tibás', '8.15', '81478');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Moravia', '28.62', '55895');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Montes de Oca', '15.16', '55814');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Turrubares', '415.29', '5482');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Dota', '400.22', '7465');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Curridabat', '15.95', '69474');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'Pérez Zeledón', '1905.51', '140872');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (1, 'León Cortés Castro', '120.8', '13288');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Alajuela', '388.43', '255598');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'San Ramón', '1018.64', '77380');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Grecia', '395.72', '74860');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'San Mateo', '125.9', '5904');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Atenas', '127.19', '25033');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Naranjo', '126.62', '42637');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Palmares', '38.06', '33401');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Poás', '73.84', '28469');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Orotina', '141.92', '17866');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'San Carlos', '3347.98', '151322');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Zarcero', '155.13', '12368');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Valverde Vega', '120.25', '18407');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Upala', '1580.67', '44556');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Los Chiles', '1358.86', '23902');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (2, 'Guatuso', '758.32', '15068');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'Cartago', '287.77', '149657');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'Paraíso', '411.91', '60005');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'La Unión', '44.83', '91090');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'Jiménez', '286.43', '15859');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'Turrialba', '1642.67', '78217');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'Alvarado', '81.06', '13862');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'Oreamuno', '202.31', '44403');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (3, 'El Guarco', '167.69', '39223');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'Heredia', '282.6', '118872');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'Barva', '53.8', '37041');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'Santo Domingo', '24.84', '38959');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'Santa Bárbara', '53.21', '33334');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'San Rafael', '48.39', '42398');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'San Isidro', '26.96', '18028');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'Belén', '12.15', '22400');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'Flores', '6.96', '17298');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'San Pablo', '7.53', '23370');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (4, 'Sarapiquí', '2140.54', '54537');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Liberia', '1436.47', '55921');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Nicoya', '1333.68', '47823');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Santa Cruz', '1312.27', '46460');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Bagaces', '1273.49', '18368');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Carrillo', '577.54', '32168');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Cañas', '682.2', '27970');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Abangares', '675.76', '18319');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Tilarán', '638.39', '20337');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Nandayure', '565.59', '11185');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'La Cruz', '1383.9', '19978');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (5, 'Hojancha', '261.42', '7289');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Puntarenas', '1842.33', '118928');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Esparza', '216.8', '27199');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Buenos Aires', '2384.22', '47576');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Montes de Oro', '244.76', '12495');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Osa', '1930.24', '29547');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Quepos', '543.77', '23915');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Golfito', '1753.96', '39699');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Coto Brus', '933.91', '47247');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Parrita', '478.79', '13940');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Corredores', '620.6', '44180');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (6, 'Garabito', '316.31', '13165');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (7, 'Limón', '1765.79', '106356');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (7, 'Pococí', '2403.49', '121735');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (7, 'Siquirres', '860.19', '60881');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (7, 'Talamanca', '2809.93', '32158');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (7, 'Matina', '772.64', '39961');
INSERT INTO Canton (ProvinciaId,Nombre,Area,Poblacion) VALUES (7, 'Guácimo', '576.48', '41082');

INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Carmen');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Merced');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Hospital');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Catedral');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Zapote');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'San Francisco de Dos Ríos');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Uruca');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Mata Redonda');
INSERT INTO Distrito(CantonId,Nombre) VALUES ('707', 'Pavas');




