function validarMarca() {
        var marca = document.getElementById("marca").value;
        if (!(/^[a-zA-Z0-9\- ]{2,30}$/.test(marca)))

        alert("validarEstado\nMin 2 car. Max 30 Car.");
        return false;
    } else {

        return true;
    }

}

function ValidarEstado(){

}
