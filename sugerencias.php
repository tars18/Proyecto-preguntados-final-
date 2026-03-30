<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preguntados!</title>
    <link rel="stylesheet" href="sugerencias.css">
    <link rel="shortcut icon" href="archivos/foquiño.png" type="image/x-icon">
</head>
<body>
    <header>
        <strong>Preguntados</strong>
        <div id="menu">
            <nav id="buttons">
                <ul>
                    <li><a href="index.php" title="">inicio</a></li>
                    <li><a href="nosotros.html" title="">Nosotros</a></li>
                    <li><a href="mas.html" title="">Mas</a></li>
                    <li><a href="sugerencias.php" title="">Sugerencias</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <h1>Aqui puedes hacer sugerencias para agregar preguntas al juego o sugerencias para mejorar la pagina!</h1>
    <h2>(Las sugerencias son anonimas y publicas.)</h2>
    <form action="sugerencias.php" class="formulario" method="post">
        <textarea name="sugest" rows="4" cols="82" placeholder="Escriba su sugerencia aqui..."></textarea> <br>
        <input type="submit" value="Enviar" class="subbot">
    </form>

    <?php
    $comentario = $_POST['sugest'] ?? NULL;
    try {
        $conexion = new PDO('mysql:host=localhost;dbname=if0_40054022_juego;charset=utf8mb4','root','');
        if ($comentario != NULL){
            $conexion->query("INSERT INTO `sugests` (`id`, `comentario`) VALUES (NULL, '$comentario')");
        }
       


       $datos = $conexion->query("SELECT * FROM `sugests`");
      

       foreach ($datos as $fila) {
        echo '<div class="menu">';
        echo '<p class="coment">';
        echo "Sugerencia N°".$fila['id']. "<br><br>";
        echo $fila['comentario'] . "</p>";
        echo '</div>';
        }


        } catch (PDOException $e) {
            echo 'Falló la conexión: ' . $e->getMessage();
        }
    ?>
</body>
</html>