<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preguntados!</title>
    <link rel="stylesheet" href="css.css">
    <link rel="shortcut icon" href="archivos\foquiño.png" type="image/x-icon">
</head>


<body>
    <style type="text/css">
        a:link,
        a:visited,
        a:active {
            text-decoration: none;
        }
    </style>
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
    <section id="contenido">
                    <article id="derecha">
    <h3>Tabla de puntajes</h3>
    <div class="contenedor">
        <table class="scoreboard">
            <thead>
                <tr>
                    <th>Jugador</th>
                    <th>Puntos</th>
                </tr>
            </thead>
            <tbody>
                <?php
                try {
                    $conexion = new PDO('mysql:host=localhost;dbname=if0_40054022_juego;charset=utf8mb4','root','');
                    $datos = $conexion->query("SELECT * FROM `puntaje` ORDER BY puntos DESC LIMIT 5");

                    foreach ($datos as $fila) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($fila['nombre']) . "</td>";
                        echo "<td>" . htmlspecialchars($fila['puntos']) . "</td>";
                        echo "</tr>";
                    }

                } catch (PDOException $e) {
                    echo '<tr><td colspan="2">Error: ' . $e->getMessage() . '</td></tr>';
                }
                ?>
            </tbody>
        </table>
    </div>
</article>

<article id="izquierda">
    <div class="contenedor">
        <p class="descripcion">
            Este es un juego de preguntas y respuestas en el que tendrás <strong>10 segundos</strong> 
            para responder una pregunta de cultura general con múltiples opciones.  
            Si respondes correctamente, se te sumarán <strong>+10 puntos</strong>.  
            En caso contrario, el juego termina.  
            <br><br>
            El juego incluye <strong>5 categorías</strong>: Ciencia, Arte, Historia, Literatura y Deportes, 
            cada una con más de 50 preguntas para responder.
        </p>

        
    </div>
    <div id="boton2">
            <a id="boton20" href="ruleta.php">Ir al Juego →</a>
    </div>
    
</article>
    </section>

</body>


</html>
