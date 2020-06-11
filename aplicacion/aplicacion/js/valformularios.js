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

}

function valcontra() {
    
}
