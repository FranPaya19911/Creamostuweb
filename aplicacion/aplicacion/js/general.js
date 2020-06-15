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