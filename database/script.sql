insert into familia (Nombre) Values ("Asteraceae"),("Acanthaceae"), ("Aizoaceae"), ("Alliaceae"),("Amaranthaceae"),("Amaryllidaceae");
insert into genero (Nombre) Values ("Cichorium"), ("Cynara"),("Lactuca"), ("Scorzonera"),("Tragopogon");
insert into especie (Nombre) Values ("Endivia"), ("Intybus"),("Cardunculus"),("Scolymus"),
("Lactuca sativa L"),("Scorzonera hispanica L"), ("Tragopogon porrifolius L");	
insert into familiaXgenero(IdGenero,IdFamilia) Values (1,1),(2,1),(3,1),(4,1),(5,1);


insert into especieXgenero(IdEspecie,IdFamiliaXgenero,Autoria,Sinonimias) Values (1,1,"Autoria","Sinonimias"),(2,1,"Autoria","Sinonimias"),
(3,2,"Autoria","Sinonimias"),(4,2,"Autoria","Sinonimias"),(5,3,"Autoria","Sinonimias"),(6,4,"Autoria","Sinonimias"), (7,5,"Autoria","Sinonimias");	
insert into colector (Nombre) Values("Crisia Piedra Chaves");
insert into validador(Nombre)Values("Yulian Ulloa Porras");



insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,FechaColecto,nota,codigo)
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






insert into Imagen (IdMuestra,Nombre,Url) Values(1,"img1", "android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(2,"img1", "android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(3,"img1", "android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(4,"img1", "android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(5,"img1", "android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(6,"img1", "android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(7,"img1", "android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(8,"img1", "android/img/img2.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(9,"img1", "android/img/img1.jpg");
insert into Imagen (IdMuestra,Nombre,Url) Values(10,"img1", "android/img/img2.jpg");
Canton (ProvinciaId,Nombre,Area,Poblacion)

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















