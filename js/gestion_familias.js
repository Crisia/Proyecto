var clasesBoton   =['btn btn-primary glyphicon glyphicon-edit','btn btn-default glyphicon glyphicon-edit'];
var editores      = ['Familia','Genero','Especie']
var edicionActual ='';
var item_select ='';    // Lista seleccionable
var Sfamilia = "";
var Sgenero = "";
var Sespecie = "";

function guardarFamilia(nuevo,anterior){
    document.getElementById("input_nuevo").value="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                //var ddl = document.getElementById("ddGenero");
                //ddl.innerHTML = respuesta;
                alert(respuesta);
            }
        }
    }; 
    nuevo = nuevo.trim();
    anterior = anterior.trim();
    var parametros="opcion=setFamilia"+"&familiaNue="+familia+"&familiaAnt="+anterior;
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}

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
function despl_ListSeleccionable(indEditor){
    document.getElementById("selectList").innerHTML="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;
            if (respuesta.length>0){
                document.getElementById("selectList").innerHTML = respuesta;
            }
        }
    };
    parametros="";
    switch (indEditor) {
    case "0":        
        document.getElementById("bt_edit_selectList").style.display = "inline-block"; 
        parametros = "opcion=getList_Familia";
        break; 
    case "1":
    document.getElementById("bt_edit_selectList").style.display = "none";
        parametros = "opcion=getList_FamiliaGenero"+"&familia="+familia;
        break;
    case "2":
    document.getElementById("bt_edit_selectList").style.display = "block";
        parametros = "opcion=getList_FamiliaGeneroEspecie"+"&familia="+familia+"&genero="+genero;
        break;
    default:
        parametros = "";            
        break;
    }
    xmlhttp.open("POST", "../../scripts/gestion_familias.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
 
}

function selectFamilia(familia){ 
    Sfamilia = familia;   
    var txtFamiliaSel = document.getElementById("txtFamiliaSel");
    txtFamiliaSel.innerHTML = familia;
    cargarDatos_familiaGeneros(familia);    
}
function selectGenero(genero){
    Sgenero = genero;
    var familia = document.getElementById("txtFamiliaSel").innerHTML;
    var txtGeneroSel = document.getElementById("txtGeneroSel");
    txtGeneroSel.innerHTML = genero;
    cargarDatos_familiaGeneroEspecies(familia,genero);
}
function selectEspecie(especie){
    Sespecie = especie;
    var txtEspecieSel = document.getElementById("txtEspecieSel");
    txtEspecieSel.innerHTML = especie;
}

function cerrarAreaEdicion(){
    edicionActual ='';
    item_select ='';
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
    document.getElementById("btn_familia").disabled =valor;
    document.getElementById("btn_genero").disabled =valor;
    document.getElementById("btn_especie").disabled =valor;
}

function desp_AreaEdicion(indEditor,idObject){     
    var puede = true;
    //alert(indEditor+" " +Sfamilia+" " +Sgenero+" " + puede);    
    if (indEditor == "1")
        puede = (Sfamilia != "");
    else{ 
        if (indEditor == "2")
            puede = (Sfamilia != "") && (Sgenero != "");
    }
    //alert(indEditor+" " +Sfamilia+" " +Sgenero+" " + puede);
    if (puede) {
        deshabilitar_BnEdicion(true,1);
        edicionActual=editores[indEditor];

        var bn = document.getElementById(idObject);
        bn.setAttribute('class',clasesBoton[0]);
    
        document.getElementById("areaEdicion").style.display ="block";
        document.getElementById("name_edicion").innerText = "Área de Edición de "+edicionActual+'s';    
        document.getElementById("lbSelectList").innerText = "Lista de "+edicionActual+'s '+'Seleccionables';     
        document.getElementById("area_selectList").style.display ="block";    

        despl_ListSeleccionable(indEditor);
    }
}
 
/*function desp_SAreaNuevo(){
    document.getElementById("area_nuevo_edit").style.display ="block";
    document.getElementById("lbNuevo_edit").innerText = 'Agregar ' + edicionActual;
    document.getElementById("lblItemSelect").innerText = 'Nuevo';
    document.getElementById("lblItemSelect").innerText = 'Nuevo';
    input_nuevo
}
function desp_SAreaEditar(){     
    document.getElementById("area_nuevo_edit").style.display ="block";
    document.getElementById("lbNuevo_edit").innerText = 'Editar ' + edicionActual;
    document.getElementById("lblItemSelect").innerText = 'Valor actual: ' + itemSelect();
}*/
function desp_SAreaEditarEsp(){     
    //document.getElementById("area_nuevo_edit_esp").style.display =block";
    //document.getElementBy-Id("lbNuevo_edit_Esp").innerText = 'Editar ' + editores[0];
    //document.getElementById("lblItemSelect_Esp").innerText = 'Valor actual: ' + itemSelect;
}

function desp_SAreaListCompleta(){
    //disabled lista seleccionable
    document.getElementById("area_nuevo_edit").style.display ="none";
    //document.getElementById("area_nuevo_edit_especie").style.display ="none";
    document.getElementById("area_listCompleta").style.display ="block";     
}



/*function editar_selectList(){
    document.getElementById("area_listCompleta").style.display ="none";
    if ((edicionActual == editores[0]) || (edicionActual == editores[1]) ){
        desp_SAreaEditar();
    }else{
        if (edicionActual == editores[2] ){
            alert('Pendiente');
        }
    }
}*/
function add_edit_selectList(opcion){ 
    document.getElementById("area_listCompleta").style.display ="none";  
    if (opcion == 0) {
        item_select="";
        switch (edicionActual) {
            case editores[0]:
                desp_area_nuevo_edit(0);
                break; 
            case editores[1]:
                desp_SAreaListCompleta();
                break;
            case editores[2]:
                desp_area_nuevo_edit(0);
                break;
        }
    } else{
        if (opcion == 1) {
            switch (edicionActual) {
                case editores[0]:
                    desp_area_nuevo_edit(1);
                    break; 
                case editores[1]:
                    break;
                case editores[2]:
                    desp_area_nuevo_edit(1);
                    break;
            }
        }
    }            
}
function desp_area_nuevo_edit(opcion){
    area = document.getElementById("area_nuevo_edit");    
    area.style.display = "block";
    lbl = document.getElementById("lbNuevo_edit");
    txtNuevo = document.getElementById("input_nuevo");
    if (opcion == 0) {        
        lbl.innerText = "Agregar " + edicionActual;
        txtNuevo.innerText = "";
    }
    else{
        lbl.innerText = "Editar " + edicionActual;
        txtNuevo.innerText = item_select;
    }
}
function guardarNuevoEdit(){
    txtNuevo = document.getElementById("input_nuevo");
    nombre = txtNuevo.value;
    nombre = nombre.trim();
    if (nombre!=""){
        switch (edicionActual) {
            case editores[0]:
                guardarFamilia(nombre,item_select);
                break; 
            case editores[1]:
                alert("Pendiente");
                break;
            case editores[2]:
                alert("Pendiente");
                break;
        }
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
function itemSelect(){
    return familia + " " + familia + " " + genero + " " +especie;
}

cerrarAreaEdicion();
//cargarDatos_familiaGeneros("Asteraceae");