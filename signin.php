<link rel="stylesheet" type="text/css" href="estilos.css">
<?php
    require_once 'login.php';
    $conexion = new mysqli($hn, $un, $pw, $db);

    if($conexion->connect_error) die("Error fatal");



    if (isset($_POST['username'])&&
        isset($_POST['password']))
    {
        //$un_temp = mysql_entities_fix_string($conexion, $_POST['username']);
        //$pw_temp = mysql_entities_fix_string($conexion, $_POST['password']);
        $pw_temp = $_POST['password'];
        $un_temp = $_POST['username'];
        $query   = "SELECT * FROM usuarios WHERE username='$un_temp'";
        $result  = $conexion->query($query);

        if (!$result) die ("Usuario no encontrado");
        elseif ($result->num_rows)
        {
            $row = $result->fetch_array(MYSQLI_NUM);
            $result->close();
            echo($row[1]);
            echo($pw_temp);
            echo("****************");
            if (password_verify($pw_temp,$row[4]))
            {
                session_start();
                $_SESSION['nombre']=$row[0];
                $_SESSION['apellido']=$row[1];
                header("Location: diseño1.php");
                die ("<p><a href='logout.php'>
              Click para salir</a></p>");
            }
            else {
                echo "Usuario/password incorrecto <p><a href='signup.php'>
            Registrarse</a></p>";
            }
        }
        else {
          echo "Usuario/password incorrecto <p><a href='signup.php'>
      Registrarse</a></p>";
      }

    }
    else
    {
      echo <<<_END


      <h1></h1>
      <form action="signin.php" method="post"><pre>
      Usuario  <input type="text" name="username">
      Password <input type="text" name="password">
               <input type="submit" value="INGRESAR">
      </form>
      _END;
    }

    $conexion->close();
/
    function mysql_entities_fix_string($conexion, $string)
    {
        return htmlentities(mysql_fix_string($conexion, $string));
      }
    function mysql_fix_string($conexion, $string){

        if (get_magic_quotes_gpc()) $string = stripslashes($string);
        return $conexion->real_escape_string($string);
      }*/
?>
