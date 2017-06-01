DROP PROCEDURE IF EXISTS guardarFamilia;
delimiter //
create procedure guardarFamilia(FamiliaNue varchar(100),FamiliaAnt varchar(100))
begin
    declare id_familia int;
    declare id_familiaAnt int;
    declare Nombre varchar(100) default "" ;
    set Nombre = "";
    select id  from familia f where (f.Nombre = FamiliaNue) INTO id_familia;
    if (id_familia is null)  then         
        if (FamiliaAnt != "") then
            select id from familia f where (f.Nombre = FamiliaAnt) INTO id_familiaAnt;
            if (id_familiaAnt is not null)  then 
                UPDATE familia SET nombre = FamiliaNue where (id = id_familiaAnt);	
                set Nombre = FamiliaNue;
            end if;
        else 
            insert into familia (nombre) values (FamiliaNue);
            set Nombre = FamiliaNue;
        end if;
    end if;    
    select Nombre;
end//
delimiter ;
call guardarFamilia("familiaYY","familiaY");



DROP PROCEDURE IF EXISTS guardarFamiliaGenero;
delimiter //
create procedure guardarFamiliaGenero(generoNue varchar(100),generoAnt varchar(100),familia varchar(100))
begin    
    declare id_familia int;
    declare id_genero int;
    declare id_generoAnt int;
    declare Nombre varchar(100) default "" ;
    select g.id from familia f 
        inner join familiaxgenero fxg on fxg.idfamilia = f.id
        inner join genero g on fxg.idgenero = g.id
        where (g.Nombre = generoNue) and (f.Nombre = familia) INTO id_genero;
    if (id_genero is null)  then  
        select f.id  from familia f where (f.Nombre = familia) INTO id_familia;  
        if (id_familia is not null) then 
            select g.id from genero g where (g.Nombre = generoNue) INTO id_genero;
            if (generoAnt != "") then
                select g.id from familia f 
                    inner join familiaxgenero fxg on fxg.idfamilia = f.id
                    inner join genero g on fxg.idgenero = g.id
                    where (g.Nombre = generoAnt) INTO id_generoAnt;

                if (id_generoAnt is not null)  then               		           
                    if (id_genero is null) then
                        insert into genero (nombre) values (generoNue);
                        SELECT @@identity AS id into id_genero;                           
                    end if;
                    -- actualizar id_genero especies por genero
                    insert into familiaxgenero (IdFamilia, IdGenero) values (id_familia,id_genero);
                    set Nombre = generoNue;
                end if;
            else 
                if (id_genero is null) then
                    insert into genero (nombre) values (generoNue);
                    SELECT @@identity AS id into id_genero;                           
                end if;
                insert into familiaxgenero (IdFamilia, IdGenero) values (id_familia,id_genero);
                set Nombre = generoNue;
            end if;
        end if;
    end if;    
    select Nombre as "Nombre";
end//
delimiter ;
call guardarFamiliaGenero("generoX","","familia1");


DROP PROCEDURE IF EXISTS guardarFamiliaGeneroEspecie;
delimiter //
create procedure guardarFamiliaGeneroEspecie(especieNue varchar(100),especieAnt varchar(100),familia varchar(100), genero varchar(100))
begin    
    declare id_familia int;
    declare id_genero int;
    declare id_especie int;
    declare id_especieAnt int;
    declare Nombre varchar(100) default "" ;
    select e.id from familia f 
        inner join familiaxgenero fxg on fxg.idfamilia = f.id
        inner join genero g on fxg.idgenero = g.id
        inner join especiexgenero exg on exg.idfamiliaxgenero = fxg.id
        inner join especie e on exg.idespecie = e.id
        where (g.Nombre = genero) and (f.Nombre = familia) and (e.Nombre = especieNue) INTO id_genero;
    if (id_especie is null)  then  
        select fxg.id from familia f 
                inner join familiaxgenero fxg on fxg.idfamilia = f.id
                inner join genero g on fxg.idgenero = g.id
                where (g.Nombre = genero) and (f.Nombre = familia) INTO id_familia;
        select g.id  from genero g where (g.Nombre = genero) INTO id_genero;  
        if ((id_familia is not null) and (id_genero is not null)) then 
            select e.id from especie e where (e.Nombre = especieNue) INTO id_especie;
            if (especieAnt != "") then
                select e.id from familia f 
                    inner join familiaxgenero fxg on fxg.idfamilia = f.id
                    inner join genero g on fxg.idgenero = g.id
                    inner join especiexgenero exg on exg.idfamiliaxgenero = fxg.id
                    inner join especie e on exg.idespecie = e.id
                    where (g.Nombre = genero) and (f.Nombre = familia) and (e.Nombre = especieAnt) INTO id_especieAnt;

                if (id_especieAnt is not null)  then               		           
                    if (id_especie is null) then
                        insert into especie (nombre) values (especieNue);
                        SELECT @@identity AS id into id_especie;                           
                    end if;
                    insert into especiexgenero (idfamiliaxgenero, IdEspecie,Autoria,Sinonimias) values (id_familia,id_especie,"","");
                    set Nombre = especieNue;
                end if;
            else 
                if (id_especie is null) then
                    insert into especie (Nombre) values (especieNue);
                    SELECT @@identity AS id into id_especie;                           
                end if;
                insert into especiexgenero (idfamiliaxgenero, IdEspecie,Autoria,Sinonimias) values (id_familia,id_especie,"","");
                set Nombre = especieNue;
            end if;
        end if;
    end if;    
    select Nombre as "Nombre";
end//
delimiter ;
call guardarFamiliaGeneroEspecie("especie1","","familia1","genero1");

DROP PROCEDURE IF EXISTS borrarFamilia;
delimiter //
create procedure borrarFamilia(pNombre varchar(100))
begin
    declare id_familia int;
    declare Nombre varchar(100) default "" ;
    select id from familia f where (f.Nombre = pNombre) INTO id_familia;
    if (id_familia is not null)  then         
        delete from familia where id=id_familia;
        set Nombre = pNombre;
    end if;
    select Nombre;
end//
delimiter ;
call borrarFamilia("familiaz");


--corregir borrar dado el genero asociado
DROP PROCEDURE IF EXISTS borrarFamiliaGenero;
delimiter //
create procedure borrarFamiliaGenero(pNombre varchar(100))
begin
    declare id_genero int;
    declare id_familiaxgenero int;
    declare Nombre varchar(100) default "" ;
    select g.id from genero g where (g.Nombre = pNombre) INTO id_genero;
    if (id_genero is not null)  then         
        -- delete from especiexgenero where id=id_genero;
        -- delete from familiaxgenero where id=id_genero;
        delete from genero where id=id_genero;
        set Nombre = pNombre;
    end if;
    select Nombre;
end//
delimiter ;



-- corregir borrar dado la familia y el genero asociado
DROP PROCEDURE IF EXISTS borrarFamiliaGeneroEspecie;
delimiter //
create procedure borrarFamiliaGeneroEspecie(pNombre varchar(100))
begin
    declare id_especie int;
    declare id_familiaxgenero int;
    declare Nombre varchar(100) default "" ;
    select e.id from especie e where (e.Nombre = pNombre) INTO id_especie;
    if (id_especie is not null)  then         
        -- delete from especiexgenero where id=id_genero;
        -- delete from familiaxgenero where id=id_genero;
        delete from especie where id=id_especie;
        set Nombre = pNombre;
    end if;
    select Nombre;
end//
delimiter ;
call borrarFamiliaGenero("familiaz");


