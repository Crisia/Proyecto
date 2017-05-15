var clasesBoton   =['btn btn-primary glyphicon glyphicon-edit','btn btn-default glyphicon glyphicon-edit'];
var editores      = ['Familia','Genero','Especie']
var edicionActual ='';
var itemSelect ='xxxx-xxx';    // Lista seleccionable



function cargarDatos_familiaGeneros(familia){    
    document.getElementById("ddGenero").innerHTML="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                var ddl = document.getElementById("ddGenero");
                ddl.innerHTML = respuesta;
            }
        }
    };    
    var parametros="opcion=getFamiliaGeneros"+"&familia="+familia;
    xmlhttp.open("POST", "../../scripts/gestion_familias.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
    //xmlhttp.open("GET", "../../scripts/gestion_familias.php?"+parametros, true);;
    //xmlhttp.send();
}
function cargarDatos_familiaGeneroEspecies(familia,genero){    
    document.getElementById("ddlEspecies").innerHTML="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                var ddl = document.getElementById("ddlEspecies");
                ddl.innerHTML = respuesta;
            }
        }
    };    
    var parametros="opcion=getFamiliaGeneroEspecies"+"&familia="+familia+"&genero="+genero;
    xmlhttp.open("POST", "../../scripts/gestion_familias.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}

function selectFamilia(familia){    
    var txtFamiliaSel = document.getElementById("txtFamiliaSel");
    txtFamiliaSel.innerHTML = familia;
    cargarDatos_familiaGeneros(familia);    
}
function selectGenero(genero){
    var familia = document.getElementById("txtFamiliaSel").innerHTML;
    var txtGeneroSel = document.getElementById("txtGeneroSel");
    txtGeneroSel.innerHTML = genero;
    cargarDatos_familiaGeneroEspecies(familia,genero);
}
function selectEspecie(especie){
    var txtEspecieSel = document.getElementById("txtEspecieSel");
    txtEspecieSel.innerHTML = especie;
}

function cerrarAreaEdicion(){
    edicionActual ='';
    itemSelect ='';
    document.getElementById("areaEdicion").style.display ="none";
    document.getElementById("area_selectList").style.display ="none";
    document.getElementById("area_listCompleta").style.display ="none";
    document.getElementById("area_nuevo_edit").style.display ="none";
    //document.getElementById("area_nuevo_edit_especie").style.display ="none";
    deshabilitar_BnEdicion(false,0);    
}
//Botones para editar los dropdownlist de familia, genero y especies
function deshabilitar_BnEdicion(valor,clase){    
    var editarFamilias = document.getElementById("editarFamilias");
    editarFamilias.setAttribute('class',clasesBoton[clase]);
    editarFamilias.disabled = valor;
    var editarGeneros = document.getElementById("editarGeneros");
    editarGeneros.setAttribute('class',clasesBoton[clase]);
    editarGeneros.disabled = valor;
    var editarEspecies = document.getElementById("editarEspecies");
    editarEspecies.setAttribute('class',clasesBoton[clase]);
    editarEspecies.disabled= valor;
}

function desp_AreaEdicion(indiceEditor,idObject){     
    deshabilitar_BnEdicion(true,1);
    edicionActual=editores[indiceEditor];

    var bn = document.getElementById(idObject);
    bn.setAttribute('class',clasesBoton[0]);
 
    document.getElementById("areaEdicion").style.display ="block";
    document.getElementById("name_edicion").innerText = "Área de Edición de "+edicionActual+'s';    
    document.getElementById("lbSelectList").innerText = "Lista de "+edicionActual+'s '+'Seleccionables';     
    document.getElementById("area_selectList").style.display ="block";
}
 
function desp_SAreaNuevo(){
    document.getElementById("area_nuevo_edit").style.display ="block";
    document.getElementById("lbNuevo_edit").innerText = 'Agregar ' + edicionActual;
    document.getElementById("lblItemSelect").innerText = 'Nuevo';
    document.getElementById("lblItemSelect").innerText = 'Nuevo';
    input_nuevo
}
function desp_SAreaEditar(){     
    document.getElementById("area_nuevo_edit").style.display ="block";
    document.getElementById("lbNuevo_edit").innerText = 'Editar ' + edicionActual;
    document.getElementById("lblItemSelect").innerText = 'Valor actual: ' + itemSelect;
}
function desp_SAreaEditarEsp(){     
    //document.getElementById("area_nuevo_edit_esp").style.display =block";
    //document.getElementById("lbNuevo_edit_Esp").innerText = 'Editar ' + editores[0];
    //document.getElementById("lblItemSelect_Esp").innerText = 'Valor actual: ' + itemSelect;
}

function desp_SAreaListCompleta(){
    //disabled lista seleccionable
    document.getElementById("area_nuevo_edit").style.display ="none";
    //document.getElementById("area_nuevo_edit_especie").style.display ="none";
    document.getElementById("area_listCompleta").style.display ="block";     
}



function editar_selectList(){
    document.getElementById("area_listCompleta").style.display ="none";
    if ((edicionActual == editores[0]) || (edicionActual == editores[1]) ){
        desp_SAreaEditar();
    }else{
        if (edicionActual == editores[2] ){
            alert('Pendiente');
        }
    }
}
function agregar_selectList(){     
    if (edicionActual == editores[0]){         
        desp_SAreaNuevo();
    }else{
    desp_SAreaListCompleta();
    }
}
function quitar_selectList(){     
    alert('Pendiente - quietar asociacion y de la lista');
}

function ok_listCompleta(){
    alert('accion guardar asociacion en la base y agregar a las listas');
    document.getElementById("area_listCompleta").style.display ="none";
}
function editar_listCompleta(){
    desp_SAreaEditar();
}
function agregar_listCompleta(){         
    desp_SAreaNuevo();
}
function quitar_listCompleta(){     
    alert('Pendiente - quietar de la lista');
}


cerrarAreaEdicion();
//cargarDatos_familiaGeneros("Asteraceae");