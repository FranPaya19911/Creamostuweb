function header(user, nombre) {

    if (user != null) {
        if (user == "admin") {

            document.getElementById("admin").style.display = "block";
            document.getElementById("user").style.display = "none";
            document.getElementById("invitado").style.display = "none";

        } else if (user == "usuario") {

            document.getElementById("admin").style.display = "none";
            document.getElementById("user").style.display = "block";
            document.getElementById("invitado").style.display = "none";


            document.getElementById("cabeceraUsuario").value = nombre;

        } else {

            document.getElementById("admin").style.display = "none";
            document.getElementById("user").style.display = "none";
            document.getElementById("invitado").style.display = "block";
        }
    }
}

function botones(valor) {
    if (valor == "admin") {
        document.getElementById("analisisweb").style.display = "none";
        document.getElementById("paginaweb").style.display = "none";
    }
}

function contenido(valor) {
    if (valor == "paginaweb") {
        document.getElementById("analisis").style.display = "none"
        document.getElementById("web").style.display = "block"

        document.getElementById("nombreweb").removeAttribute("required");
        document.getElementById("comentario").removeAttribute("required");

    } else {
        document.getElementById("web").style.display = "none"
        document.getElementById("analisis").style.display = "block"
    }
}


function AbajoArriba() {
    var e = document.getElementById('divu');
    var objDiv = document.getElementById("divu");
    objDiv.scrollTop = objDiv.scrollHeight;
}


function conector(nombre, ids) {
    PageMethods.docall(nombre, ids, onSuccess, onFailure);
    document.getElementById("nombreusuario").innerHTML = nombre;
    var cambiar = document.getElementById("idusu");
    cambiar.value = ids;
}

function onSuccess(result) {
    document.getElementById("divu").innerHTML = result;
    AbajoArriba();
}


function onFailure(error) {
    alert(error);
}