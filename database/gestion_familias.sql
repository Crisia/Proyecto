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
                -- actualizar id_familia en familiaxgenero	           
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
        where (g.Nombre = generoNue) INTO id_genero;
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
call guardarFamiliaGenero("genero1","","familia1");


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