<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preguntados!</title>
    <link rel="stylesheet" href="cssruleta.css">
    <link rel="shortcut icon" href="archivos/foquiño.png" type="image/x-icon">
    <style>
        /* Overlay de carga */
        #overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.85);
            color: white;
            font-size: 1.5rem;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            z-index: 999;
            gap: 20px;
        }
        /* Spinner */
        .loader {
            border: 6px solid #f3f3f3; /* gris claro */
            border-top: 6px solid #3498db; /* azul */
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Oculto por defecto */
        #continuar-btn {
            display: none;
        }
        video {
            max-width: 100%;
        }
    </style>
</head>
    
<body>
    <header>
        <strong>Preguntados</strong>
        <div id="menu">
            <nav id="buttons">
                <ul>
                    <li><a href="index.php" title="">inicio</a></li>
                    <li><a href="nosotros.html" title="">Nosotros</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <div class="videos">
    <?php
        session_start();
        $categoria_random = null;
        $mostrar_principal = true;

        if (isset($_POST['boton'])) {
            $categorias = ["ciencia", "historia", "arte", "deportes", "literatura"];
            $categoria_random = $categorias[array_rand($categorias)];
            $mostrar_principal = false;
            $_SESSION['categoria'] = $categoria_random;

            echo '<video id="videoCategoria" src="archivos/'.$categoria_random.'.mp4" autoplay muted></video>';
        }

        if ($mostrar_principal) {
    		echo '<video id="videoPrincipal" src="archivos/principal.mp4" autoplay loop muted></video>';
		}
	?>
    </div>

    <div class="botones">
    <form action="ruleta.php" method="post">
        <?php if (!isset($_POST['boton'])): ?>
            <input type="submit" value="LANZAR" name="boton">
        <?php endif; ?>
    </form>
    <br>
    <?php if ($categoria_random !== null): ?>
        <form action="juego.php" method="post">
            <button id="continuar-btn" type="submit">Continuar</button>
        </form>
    <?php endif; ?>
</div>


    <!-- Overlay de carga -->
    <div id="overlay">
        <div class="loader"></div>
        <div>Estamos cargando el juego...</div>
    </div>

    <script>
        const video = document.querySelector("video");
        const overlay = document.getElementById("overlay");
        const continuarBtn = document.getElementById("continuar-btn");

        if (video) {
            // Cuando el video está listo para reproducirse
            video.addEventListener("loadeddata", () => {
                overlay.style.display = "none"; // quitar overlay
            });

            // Cuando termina el video (solo aplica a los de categoría)
            video.addEventListener("ended", () => {
                if (continuarBtn) {
                    continuarBtn.style.display = "inline-block";
                }
            });
        }
    </script>
</body>
</html>

