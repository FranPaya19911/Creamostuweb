
function cargar() {
    document.getElementById("valcorreo").style.display = "none";
}

function desactivado() {
    document.getElementById("Button1").disabled = true;
    document.getElementById("valcorreo").style.display = "none";
    document.getElementById("valcontra").style.display = "none";
}

function valnombre(event) {

    var evento = event || window.event;
    var codenom = evento.charCode;
    var codeespe = evento.keyCode;
    
    var nombre = false;
    var especial = false;

    if ((codeespe == 8) || (codeespe == 37) || (codeespe == 39) || (codeespe == 46)) {
        especial = true;
    } else {
        especial = false;
    }

    if ((codenom >= 97 && codenom <= 122) || (codenom >= 65 && codenom <= 90) || (codenom == 32) || (codenom == 209) || (codenom == 241)) {
        nombre = true;
    } else {
        nombre = false;
    }

    if (nombre == true || especial == true) {
        return true;
    } else {
        return false;
    }


}

function valtelefono(event) {

    var evento = event || window.event;
    var codenum = evento.charCode;
    var codeespe = evento.keyCode;

    var numero = false;
    var especial = false;

    if ((codeespe == 8) || (codeespe == 37) || (codeespe == 39) || (codeespe == 46)) {
        especial = true;
    } else {
        especial = false;
    }
    
    if (codenum >= 48 && codenum <= 57) {
        numero = true;
    } else {
        numero = false;
       
    }

    if (numero == true || especial == true) {
        return true;
    } else {
        return false;
    }
}

function valcorreo() {

    var email = document.getElementById("correo").value;
    var expemail = new RegExp(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/);

    if (!expemail.test(email)) {
        document.getElementById("valcorreo").style.display = "block";
    } else {
        document.getElementById("valcorreo").style.display = "none";
    }
}

function valcontra() {

    var password = document.getElementById("password").value;
    var expasswd = new RegExp(/(?=\w*[A-Z])(?=\w*[a-z])(?=\w*[0-9]){8}(?=\w*[A-Z])(?=\w*[a-z])(?=\w*[0-9])/);

    if (password.length > 7) {

        if (!expasswd.test(password)) {
            document.getElementById("valcontra").style.display = "block";
        } else {
            document.getElementById("valcontra").style.display = "none";
        }

    } else {
        document.getElementById("valcontra").style.display = "block";
    }
    
}

function btnConcacto() {

    var checked = document.getElementById("checkbox").checked;
    var correo = document.getElementById("correo").value;
    var valemail = document.getElementById("valcorreo").style.display;

    if ((correo != "") && (valemail == "none")) {

        if (checked) {
            document.getElementById("Button1").disabled = false;
        } else {
            document.getElementById("Button1").disabled = true;
        }

    } else {
        alert("No puedes activar el checkbox si el formulario no está bien rellenado");
        document.getElementById("checkbox").checked = false;
    }


}

function btnRegistro() {

    var checked = document.getElementById("check").checked;
    var correo = document.getElementById("correo").value;
    var password = document.getElementById("password").value;
    var valemail = document.getElementById("valcorreo").style.display;
    var valpass = document.getElementById("valcontra").style.display;


    if ((correo != "") && (valemail == "none") && (password != "") && (valpass == "none")) {

        if (checked) {
            document.getElementById("Button1").disabled = false;
        } else {
            document.getElementById("Button1").disabled = true;
        }

    } else {
        alert("No puedes activar el checkbox si el formulario no está bien rellenado");
        document.getElementById("check").checked = false;
    }
}
