<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preguntados!</title>
    <link rel="stylesheet" href="cssjuego.css">
    <link rel="shortcut icon" href="archivos\foquiño.png" type="image/x-icon">
</head>
<body>

<?php
session_start();

if (!isset($_SESSION['puntaje'])) {
    $_SESSION['puntaje'] = 0;
}
$categoria = $_SESSION['categoria'];

try {
    $conexion = new PDO('mysql:host=localhost;dbname=if0_40054022_juego;charset=utf8mb4','root','');
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Procesar envío del nick para guardar puntaje
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['guardar_nick'])) {
        $nickname = trim($_POST['nickname']);
        $puntajefinal = $_SESSION['puntaje'];

        if ($nickname !== '') {
            // Guardar en la base de datos
            $stmt = $conexion->prepare("INSERT INTO puntaje (nombre, puntos) VALUES (:nombre, :puntos)");
            $stmt->bindParam(':nombre', $nickname);
            $stmt->bindParam(':puntos', $puntajefinal);
            $stmt->execute();

            // Reset puntaje y mensaje
            $_SESSION['puntaje'] = 0;
            echo '<p class= "botoncito"> <center><a href="ruleta.php" class="replay">Volver a jugar</a> </center> </p>';
            exit; // Termina script para no mostrar pregunta
        } else {
            echo "<p>Por favor ingresa un nickname válido.</p>";
        }
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['respuesta'])) {
        $respuesta_usuario = $_POST['respuesta'];
        $respuesta_correcta = $_POST['correcta'];

        if ($respuesta_usuario === $respuesta_correcta) {
            echo "<p class='answer'>¡Respuesta correcta!</p>";
            $_SESSION['puntaje'] += 10;
            echo "<div class='points'>" . "Puntaje: " . $_SESSION['puntaje'] . "</div>";

            echo "<script>
                    setTimeout(() => {
                        window.location.href = window.location.href;
                    }, 1000);
                </script>";
        } else {
            // Mostrar formulario para ingresar nickname al perder
            $puntajefinal = $_SESSION['puntaje'];
                
                echo "<div class='incorrecta'>Respuesta incorrecta. La correcta era la: " . htmlspecialchars($respuesta_correcta) . "</div>";
                
            ?>

            <?php if($puntajefinal > 0): ?>
                        <form method="post" action="" class="formularioinc">
                            <label>Ingresa tu nickname (<?php echo $puntajefinal; ?>):</label><br>
                            <input type="text" name="nickname" required>
                            <input type="hidden" name="guardar_nick" value="1">
                            <div id="boton"><button type="submit" id="save">Guardar</button></div>
                        </form>
                    <?php else: ?>
                        <p class= "botoncito2"> <center><a href="ruleta.php" class="replay">Volver a jugar</a> </center> </p>
            <?php endif; ?>
            
            <?php
            exit;
            $_SESSION['puntaje'] = 0;
        }
    } else {
        // Mostrar pregunta
        $stmt = $conexion->query("SELECT COUNT(*) FROM $categoria");
        $total = $stmt->fetchColumn();

        $numero_random = rand(1, $total);

        $stmt = $conexion->prepare("SELECT * FROM $categoria WHERE id = :id");
        $stmt->bindParam(':id', $numero_random, PDO::PARAM_INT);
        $stmt->execute();

        $pregunta = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($pregunta):
?>
<div id="cajag" class="arriba" style="display:block;">

    <div class="formu">
        <form method="post" action="" id="formulario">
            <div id="temporizador" class="temp"><meter id="progreso" min="0" max="10" value="10" low="4" high="6" optimum="10"><span id="tiempo" style="display:none;"></span>
            </div>
            <h2><?php echo htmlspecialchars($pregunta['pregunta']); ?></h2>

        <div class="cajapreguntas">
            <div class="preguntas">
                <label class="p1">
                    <input type="radio" name="respuesta" value="1" required>
                    <?php echo htmlspecialchars($pregunta['opcion1']); ?>
                </label><br>

                <label class="p2">
                    <input type="radio" name="respuesta" value="2">
                    <?php echo htmlspecialchars($pregunta['opcion2']); ?>
                </label><br>

                <label class="p3">
                    <input type="radio" name="respuesta" value="3">
                    <?php echo htmlspecialchars($pregunta['opcion3']); ?>
                </label><br>

                <label class="p4">
                    <input type="radio" name="respuesta" value="4">
                    <?php echo htmlspecialchars($pregunta['opcion4']); ?>
                </label><br>
            </div>
        
        </div>
            <input type="hidden" name="correcta" value="<?php echo $pregunta['correcta']; ?>">
        </form>
    </div>
</div>
<div id="mensajeTiempo" style="display:none;" class="perdiste">
    <p class="msgtiempo">Tiempo agotado. Perdiste.</p>

    <?php if($_SESSION['puntaje'] > 0): ?>
            <form method="post" action="" id="form_nickname_tiempo" class="gameover">
                <label>Ingresa tu nickname para guardar tu puntaje (<?php echo $_SESSION['puntaje']; ?>):</label><br><br>
                <input type="text" name="nickname" required>
                <input type="hidden" name="guardar_nick" value="1">
                <button type="submit" id="save">Guardar</button>
            </form>
        <?php else: ?>
            <p class= "botoncito2"> <center><a href="ruleta.php" class="replay">Volver a jugar</a> </center> </p>
      <?php endif; ?>
    
    

</div>

<script>
    let tiempoTotal = 10; 
    let tiempoRestante = tiempoTotal;
    let tiempoMs = tiempoTotal * 1000;

    const tiempoSpan = document.getElementById("tiempo");
    const form = document.getElementById("formulario");
    const mensajeTiempo = document.getElementById("mensajeTiempo");
    const caja = document.getElementById("cajag");
    const progreso = document.getElementById("progreso");

    const intervalo = setInterval(() => {
        tiempoRestante -= 0.1; 
        if (tiempoRestante <= 0) {
            clearInterval(intervalo);
            progreso.value = 0;
            tiempoSpan.textContent = "0";
            form.style.display = 'none';
            mensajeTiempo.style.display = 'block';
            if (caja) caja.style.display = 'none';
        } else {
            progreso.value = tiempoRestante.toFixed(1);
            tiempoSpan.textContent = Math.ceil(tiempoRestante); // para mostrar segundos enteros
        }
    }, 100); // cada 100ms (0.1 segundos)

    // Detener el tiempo si selecciona una respuesta
    form.querySelectorAll('input[type=radio]').forEach(radio => {
        radio.addEventListener('change', () => {
            clearInterval(intervalo);
            form.submit();
        });
    });
</script>


<?php
        else:
            echo "<p>No se encontró la pregunta.</p>";
        endif;
    }

} catch (PDOException $e) {
    echo "Falló la conexión: " . $e->getMessage();
}
?>




</body>
</html>