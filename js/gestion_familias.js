var clasesBoton   =['btn btn-primary glyphicon glyphicon-edit','btn btn-default glyphicon glyphicon-edit'];
var editores      = ['Familia','Genero','Especie']
var edicionActual ='';
var item_select ='';    // Lista seleccionable
var Sfamilia = "";
var Sgenero = "";
var Sespecie = "";
var nuevo_edit = true;

var strSelecGen ="Seleccione un Género";
var strSelecEsp ="Seleccione una Especie";

function Space(X){
    return pad('', ' ', X);
}
function quitar_familia(familia){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                //var ddl = document.getElementById("ddGenero");
                //ddl.innerHTML = respuesta;               
                var selectList = document.getElementById("selectList");                    
                selectList.options.remove(selectList.selectedIndex);
            }
        }
    };         
    familia = familia.trim();    
    var parametros="opcion=deleteFamilia"+"&familia="+familia;
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}
function quitar_familia_genero(familia,genero){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                //var ddl = document.getElementById("ddGenero");
                //ddl.innerHTML = respuesta;               
                var selectList = document.getElementById("selectList");                    
                selectList.options.remove(selectList.selectedIndex);
            }
        }
    };         
    familia = familia.trim();    
    var parametros="opcion=deleteFamilia_genero"+"&familia="+familia+"&genero="+genero;
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit_G.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}
function quitar_familia_genero_especie(familia,genero,especie){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                //var ddl = document.getElementById("ddGenero");
                //ddl.innerHTML = respuesta;               
                var selectList = document.getElementById("selectList");                    
                selectList.options.remove(selectList.selectedIndex);
            }
        }
    };         
    familia = familia.trim();    
    var parametros="opcion=deleteFamilia_genero_especie"+"&familia="+familia+"&genero="+genero+"&especie="+especie;
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit_E.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}

function guardarFamilia(nuevo){
    document.getElementById("input_nuevo").value="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if ( (respuesta != null) && (respuesta != "") ){
                var selectList = document.getElementById("selectList");                    
                var option = document.createElement("option");
                option.text = respuesta;
                option.value = respuesta;
                selectList.options.add(option);                                        
                document.getElementById("area_nuevo_edit").style.display = "none";                
            }
            document.getElementById("selectList").disabled  = false; 
        }
    };     
    nuevo = nuevo.trim();    
    var parametros="opcion=setFamilia"+"&familiaNue="+nuevo+"&familiaAnt=";
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}
function cambiarFamilia(nuevo,anterior){
    document.getElementById("input_nuevo").value="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if ( (respuesta != null) && (respuesta != "") ){
                var ddl = document.getElementById("selectList");
                var opcion =ddl.options[ddl.selectedIndex];
                opcion.text = respuesta;
                opcion.value = respuesta;                
            }
            document.getElementById("area_nuevo_edit").style.display = "none";
            document.getElementById("selectList").disabled  = false; 
        }
    }; 
    nuevo = nuevo.trim();
    anterior = anterior.trim();
    var parametros="opcion=setFamilia"+"&familiaNue="+nuevo+"&familiaAnt="+anterior;
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}
function guardarGenero(familia,nuevo){
    document.getElementById("input_nuevo").value="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {            
            var respuesta = this.responseText;           
            if ( (respuesta != null) && (respuesta != "") ){
                alert(respuesta);
                var selectList = document.getElementById("selectList");                    
                var opcion = document.createElement("option");
                opcion.text = respuesta;
                opcion.value = respuesta;
                selectList.options.add(opcion);                                                            
            }
            document.getElementById("area_nuevo_edit").style.display = "none";
            document.getElementById("selectList").disabled  = false; 
        }
    };     
    nuevo = nuevo.trim();    
    var parametros="opcion=setGenero"+"&familia="+familia+"&generoNue="+nuevo+"&generoAnt="+"";
    alert(parametros);
    //xmlhttp.open("GET", "../../scripts/gestion_familias_edit_G.php?"+parametros, true);
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit_G.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
    //xmlhttp.send();
}
function guardarEspecie(familia,genero,nuevo){
    document.getElementById("input_nuevo").value="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {            
            var respuesta = this.responseText;           
            if ( (respuesta != null) && (respuesta != "") ){
                var selectList = document.getElementById("selectList");                    
                var opcion = document.createElement("option");
                opcion.text = respuesta;
                opcion.value = respuesta;
                selectList.options.add(opcion);                                                            
            }
            document.getElementById("area_nuevo_edit").style.display = "none";
            document.getElementById("selectList").disabled  = false; 
        }
    };     
    nuevo = nuevo.trim();    
    var parametros="opcion=setEspecie"+"&familia="+familia+"&genero="+genero+"&especieNue="+nuevo+"&especieAnt="+"";
    xmlhttp.open("POST", "../../scripts/gestion_familias_edit_E.php?", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(parametros);
}
function cambiarGenero(familia, nuevo, anterior){
    document.getElementById("input_nuevo").value="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if ( (respuesta != null) && (respuesta != "") ){
                var ddl = document.getElementById("selectList");
                var opcion =ddl.options[ddl.selectedIndex];
                opcion.text = respuesta;
                opcion.value = respuesta;                
            }
            document.getElementById("area_nuevo_edit").style.display = "none";
            document.getElementById("selectList").disabled  = false; 
        }
    };     
    nuevo = nuevo.trim();    
    var parametros="opcion=setGenero"+"&familia="+familia+"&generoNue="+nuevo+"&generoAnt="+anterior;
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
        parametros = "opcion=getList_FamiliaGenero"+"&familia="+Sfamilia;
        break;
    case "2":
    document.getElementById("bt_edit_selectList").style.display = "block";
        document.getElementById("bt_edit_selectList").style.display = "inline-block"; 
        parametros = "opcion=getList_FamiliaGeneroEspecie"+"&familia="+Sfamilia+"&genero="+Sgenero;
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
    Sfamilia = Sfamilia.trim();  
    Sgenero = "";
    Sespecie = "";
    var txtGeneroSel = document.getElementById("txtGeneroSel");
    txtGeneroSel.innerHTML = strSelecGen;
    var txtEspecieSel = document.getElementById("txtEspecieSel");
    txtEspecieSel.innerHTML = strSelecEsp;
    var txtFamiliaSel = document.getElementById("txtFamiliaSel");    
    txtFamiliaSel.innerHTML = familia;
    cargarDatos_familiaGeneros(familia);    
}
function selectGenero(genero){
    Sgenero = genero;
    Sgenero = Sgenero.trim();
    Sespecie = "";
    var txtEspecieSel = document.getElementById("txtEspecieSel");
    txtEspecieSel.innerHTML = strSelecEsp;
    var familia = document.getElementById("txtFamiliaSel").innerHTML;    
    var txtGeneroSel = document.getElementById("txtGeneroSel");
    txtGeneroSel.innerHTML = genero;
    cargarDatos_familiaGeneroEspecies(familia,genero);
}
function selectEspecie(especie){
    Sespecie = especie;
    Sespecie = Sespecie.trim();
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
    switch (indEditor) {
        case 1:
            puede = (Sfamilia != "");
            break; 
        case 2:
            puede = (Sfamilia != "") && (Sgenero != "");
            break;
        case 3:
            puede = (Sfamilia != "") && (Sgenero != "") && (Sespecie != "");
            break;
    }
    if (puede) {
        document.getElementById("selectList").disabled  = false; 
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
 
/*function desp_SAreaNuevoEdit(){
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
    var selectList = document.getElementById("selectList");             
    if (opcion == 0) {
        item_select="";
        desp_area_nuevo_edit(0);
        selectList.selectedIndex = -1;
    } else{
        if (opcion == 1) {            
            if (selectList.selectedIndex != -1) {
                desp_area_nuevo_edit(1);
            }
        }
    }            
}

function desp_area_nuevo_edit(opcion){
    nuevo_edit = (opcion==0);
    document.getElementById("selectList").disabled = true; 
    //alert (edicionActual);
    switch (edicionActual) {
        //case editores[2]:
            //alert("pendiente-edit especial");
            //break; 
        case editores[0]:
        case editores[1]:
        case editores[2]:{
            area = document.getElementById("area_nuevo_edit");    
            area.style.display = "block";
            lbl = document.getElementById("lbNuevo_edit");
            txtNuevo = document.getElementById("input_nuevo");
            if (opcion == 0) {                                       
                lbl.innerText = "Agregar " + edicionActual;
                txtNuevo.innerText = "";
                item_select = "";
            }
            else{
                lbl.innerText = "Editar " + edicionActual;
                txtNuevo.value = item_select;
            }
            break; 
        }
    }
}
function guardarNuevoEdit(){
    txtNuevo = document.getElementById("input_nuevo");
    nombre = txtNuevo.value;
    nombre = nombre.trim();    
    if (nombre!=""){  
        if (nuevo_edit) {
            switch (edicionActual) {
                case editores[0]:
                    guardarFamilia(nombre);
                    break; 
                case editores[1]:
                    guardarGenero(Sfamilia,nombre);
                    break;
                case editores[2]:
                    guardarEspecie(Sfamilia,Sgenero,nombre);
                    break;
            }
        }     
        else{
            switch (edicionActual) {
                case editores[0]:
                    cambiarFamilia(nombre,item_select);
                    break; 
                case editores[1]:
                    cambiarGenero(Sfamilia,nombre,item_select);
                    break;
                case editores[2]:
                    //cambiarGenero(Sfamilia,Sgenero,nombre,item_select);
                    break;
            }
        } 
    }
}

function quitar_selectList(){   
    if (item_select!=""){
        switch (edicionActual) {
            case editores[0]:
                quitar_familia(item_select);
                break; 
            case editores[1]:
                quitar_familia_genero(Sfamilia,item_select);
                break;
            case editores[2]:
                quitar_familia_genero_especie(Sfamilia,Sgenero,item_select);
                break;
        }
    }         
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
    return Sfamilia + " " + Sgenero + " " + item_select;
}
function selecionarItem(){
    var selectList = document.getElementById("selectList");
    item_select = selectList.value;
    item_select = item_select.trim();    
    //alert (item_select);
}
function eliminarMsJ(){    
    var bt_remove = document.getElementById("bt_remove_selectList");
    bt_remove.setAttribute("data-toggle","");
    bt_remove.setAttribute("data-target","");    
    if (item_select!=""){
        //var msj1= "Eliminar "+ edicionActual;
        //var msj2= "¿Desea eliminar el item: "+ itemSelect() + "?";
        //getMsjEli_SelectLis(msj1,msj2);
    //}        
        bt_remove.setAttribute("data-toggle","modal");
        bt_remove.setAttribute("data-target","#quitarModalSL");   
        document.getElementById("quitarModalSL").style.display ="inline-block";
        document.getElementById("msj1_eli_selectLis").innerHTML ="Eliminar "+ edicionActual;
        document.getElementById("msj2_eli_selectLis").innerHTML ="¿Desea eliminar el item: "+ itemSelect() + "? ";
    }
}

cerrarAreaEdicion();
//cargarDatos_familiaGeneros("Asteraceae");