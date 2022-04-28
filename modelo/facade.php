<?php
     include $_SERVER["DOCUMENT_ROOT"] . '/tienda/control/DAO.php';

    // echo "la opcion que se pasa es " . $_REQUEST["opc"];

    switch($_REQUEST["opc"]) {
        
        case 2:

            $marca = $_POST["marca"];
            Marca :: insertar($marca);  // echo "la marca ingresada es " . $marca;  validación     
            //:: operadores o indices de una resolucion 
            //invocacion  de un metodo de una clase                                
            break;
    }
?>