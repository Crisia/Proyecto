function cargarDatos_genero(){ 
    document.getElementById("genero").innerHTML="";
    
    var nombre=document.getElementById("familia").value;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                
                document.getElementById("genero").innerHTML=respuesta;
                
            }
        }
        
    };    
    xmlhttp.open("GET", "../../scripts/load-generos.php?"+"&nombre="+nombre, true);
    xmlhttp.send();
}

function cargarDatos_especie(){ 
    document.getElementById("especie").innerHTML="";
    var nombreF = document.getElementById("familia").value;
    var nombreG = document.getElementById("genero").value;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                
                document.getElementById("especie").innerHTML=respuesta;
                
            }
        }
    };    
    xmlhttp.open("GET", "../../scripts/load-especies.php?"+"&nombreF="+nombreF+"&nombreG="+nombreG, true);
    xmlhttp.send();
}
function cargarDatos_colector(){ 

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                
                document.getElementById("colector").innerHTML=respuesta;
                
            }
        }
    };    
    xmlhttp.open("GET", "../../scripts/load-colector.php?", true);
    xmlhttp.send();
}
function cargarDatos_validador(){ 
    
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                
                document.getElementById("validador").innerHTML=respuesta;
                
            }
        }
    };    
    xmlhttp.open("GET", "../../scripts/load-validador.php?", true);
    xmlhttp.send();
}
function cargarDatos_provincia(){ 
    document.getElementById("provincia").innerHTML="";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                
                document.getElementById("provincia").innerHTML=respuesta;
                
            }
            
        }
        
    };    
    xmlhttp.open("GET", "../../scripts/load-provincias.php?", true);
    xmlhttp.send();
}


function cargarDatos_canton(){ 
    document.getElementById("canton").innerHTML="";
    var nombre=document.getElementById("provincia").value;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                
                document.getElementById("canton").innerHTML=respuesta;
                
            }
        }
        
    };    
    xmlhttp.open("GET", "../../scripts/load-cantones.php?"+"&nombre="+nombre, true);
    xmlhttp.send();
}
function cargarDatos_distrito(){ 
    document.getElementById("distrito").innerHTML="";
    var nombreF = document.getElementById("provincia").value;
    var nombreG = document.getElementById("canton").value;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                document.getElementById("distrito").innerHTML=respuesta;
                
            }
            
        }
    };    
    xmlhttp.open("GET", "../../scripts/load-distritos.php?"+"&nombreF="+nombreF+"&nombreG="+nombreG, true);
    xmlhttp.send();
}
function enviarDatos_Muestra(){ 
    //alert("Entraaaaaaa");
    startSpinner();
    var provincia = document.getElementById("provincia").value;
    //alert(provincia);
    var canton = document.getElementById("canton").value;
    //alert(canton);
    var distrito = document.getElementById("distrito").value;
    //alert(distrito);
    
    var familia = document.getElementById("familia").value;
    //alert(familia);
    var genero = document.getElementById("genero").value;
    //alert(genero);
    var especie = document.getElementById("especie").value;
    //alert(especie);

    var colector =document.getElementById("colector").value;
    //alert(colector);
    var validador =document.getElementById("validador").value;
    //alert(validador);

    var fecha = document.getElementById("fecha").value;
    //alert(fecha);

    var nota = document.getElementById("nota").value;
    //alert(nota);
    var localidad = document.getElementById("localidad").value;
    //alert(localidad);
    var latitud = document.getElementById("latitud").value;
    //alert(latitud);
    var longitud = document.getElementById("logitud").value;
    //alert(longitud);
    var altitud = document.getElementById("altitud").value;
    //alert(altitud);
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var respuesta = this.responseText;            
            if (respuesta.length>0){
                
                
            }
            else
            {
                alert("No se agrego");
            }
        stopSpinner();
        }
    };    
    xmlhttp.open("GET", "../../scripts/send-muestra.php?"+"&provincia="+provincia+"&canton="+canton+"&distrito="+distrito+
    "&familia="+familia+"&genero="+genero+"&especie="+especie+"&colector="+colector+"&validador="+validador+"&fecha="+fecha+
    "&nota="+nota+"&localidad="+localidad+"&latitud="+latitud+"&longitud="+longitud+"&altitud="+altitud+"&fecha="+fecha, true);
    xmlhttp.send();



}


