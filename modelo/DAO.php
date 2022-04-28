<?php

    class Marca {

        // construtor

      public static function insertar ($marca) {  

          include '../conexion/conexion.php';
          $sql = mysqli_query($cnn, "select marca from marca where marca = ' $marca ' and estado = 'T'");
          $rows = mysqli_num_rows($sql);
          if ($rows == 0) {

            $sql = mysqli_query($cnn, "insert into marca (marca, estado) values ('$marca', 'T')");
            echo "<script type='text/Javascript'>alert('Registro Almacenado');
                </script>";

          }else{

            echo "<script type='text/Javascript'>alert('El Registro ya Existe'); history.back(); </script>";
          }
          


        }
    }

?>