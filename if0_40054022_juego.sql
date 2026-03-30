-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2025 a las 16:59:17
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_40054022_juego`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arte`
--

CREATE TABLE `arte` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `opcion1` varchar(100) NOT NULL,
  `opcion2` varchar(100) NOT NULL,
  `opcion3` varchar(100) NOT NULL,
  `opcion4` varchar(100) NOT NULL,
  `correcta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `arte`
--

INSERT INTO `arte` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, '¿Quién pintó \"La persistencia de la memoria\"?', 'Pablo Picasso', 'Salvador Dalí', 'Vincent van Gogh', 'Claude Monet', '2'),
(2, '¿En qué movimiento artístico se enmarca el cubismo?', 'Surrealismo', 'Impresionismo', 'Cubismo', 'Expresionismo', '3'),
(3, '¿Cuál es la técnica artística utilizada en el muralismo mexicano?', 'Óleo', 'Fresco', 'Acrílico', 'Temple', '2'),
(4, '¿Quién es el autor de \"La Gioconda\"?', 'Donatello', 'Michelangelo', 'Rafael', 'Leonardo da Vinci', '4'),
(5, '¿Qué escultor es conocido por la obra \"El Pensador\"?', 'Auguste Rodin', 'Michelangelo', 'Donatello', 'Gian Lorenzo Bernini', '1'),
(6, '¿Cuál fue el principal centro del Renacimiento italiano?', 'Venecia', 'Roma', 'Florencia', 'Milán', '3'),
(7, '¿Quién pintó \"La noche estrellada\"?', 'Claude Monet', 'Vincent van Gogh', 'Paul Cézanne', 'Edgar Degas', '2'),
(8, '¿Qué artista es famoso por sus cuadros de flores gigantes y el uso del color?', 'Mary Cassatt', 'Frida Kahlo', 'Georgia O’Keeffe', 'Louise Bourgeois', '3'),
(9, '¿Qué corriente artística promovió el subconsciente y los sueños?', 'Surrealismo', 'Cubismo', 'Impresionismo', 'Realismo', '1'),
(10, '¿En qué siglo floreció el Barroco?', 'Siglo XVI', 'Siglo XVII', 'Siglo XVIII', 'Siglo XIX', '2'),
(11, '¿Quién fue el pintor principal del impresionismo?', 'Édouard Manet', 'Claude Monet', 'Pierre-Auguste Renoir', 'Edgar Degas', '2'),
(12, '¿Qué técnica utiliza la pintura al óleo?', 'Pintura con pasteles', 'Pintura con agua', 'Pintura con acrílicos', 'Pintura con pigmentos en aceite', '4'),
(13, '¿Quién diseñó la Torre Eiffel?', 'Gustave Eiffel', 'Alexandre Gustave', 'Jean Nouvel', 'Le Corbusier', '1'),
(14, '¿Qué artista es famoso por sus esculturas de grandes cabezas en la Isla de Pascua?', 'Moai', 'Rapa Nui', 'Los constructores son anónimos', 'Polinesios', '3'),
(15, '¿Quién pintó el techo de la Capilla Sixtina?', 'Leonardo da Vinci', 'Michelangelo', 'Rafael', 'Donatello', '2'),
(16, '¿Qué estilo artístico usa formas geométricas y abstracción?', 'Cubismo', 'Barroco', 'Romanticismo', 'Neoclasicismo', '1'),
(17, '¿Qué artista es conocido por sus obras de arte pop con latas de sopa Campbell?', 'Keith Haring', 'Roy Lichtenstein', 'Andy Warhol', 'Jean-Michel Basquiat', '3'),
(18, '¿Quién fue la artista mexicana famosa por sus autorretratos y el uso del folclore?', 'Diego Rivera', 'Frida Kahlo', 'Remedios Varo', 'Leonora Carrington', '2'),
(19, '¿Qué movimiento artístico surge tras la Primera Guerra Mundial con énfasis en el absurdo?', 'Dadaísmo', 'Futurismo', 'Cubismo', 'Surrealismo', '1'),
(20, '¿Qué arquitecto diseñó la Casa Batlló en Barcelona?', 'Ludwig Mies van der Rohe', 'Le Corbusier', 'Frank Lloyd Wright', 'Antoni Gaudí', '4'),
(21, '¿Qué artista pintó \"El Grito\"?', 'Edvard Munch', 'Vincent van Gogh', 'Pablo Picasso', 'Henri Matisse', '1'),
(22, '¿Cuál es la característica principal del arte impresionista?', 'Escenas mitológicas', 'Formas geométricas', 'Temas religiosos', 'Uso de luz y color para captar momentos', '4'),
(23, '¿Qué pintor es conocido por sus cuadros de girasoles?', 'Paul Gauguin', 'Vincent van Gogh', 'Claude Monet', 'Georges Seurat', '2'),
(24, '¿Quién es el padre del surrealismo?', 'Salvador Dalí', 'Max Ernst', 'André Breton', 'René Magritte', '3'),
(25, '¿Qué obra es considerada la primera pintura renacentista?', 'El nacimiento de Venus', 'La Anunciación', 'La Última Cena', 'La Gioconda', '2'),
(26, '¿Cuál es la principal técnica utilizada en el grabado?', 'Impresión en relieve', 'Pintura al óleo', 'Escultura', 'Dibujo a carboncillo', '1'),
(27, '¿Qué artista pintó \"Las meninas\"?', 'Bartolomé Murillo', 'Francisco Goya', 'El Greco', 'Diego Velázquez', '4'),
(28, '¿Qué corriente artística es conocida por su atención al detalle y realismo en el siglo XV?', 'Barroco', 'Gótico', 'Renacimiento', 'Romanticismo', '3'),
(29, '¿Qué pintor español es famoso por el cubismo y el periodo azul?', 'Salvador Dalí', 'Pablo Picasso', 'Joan Miró', 'Francisco Goya', '2'),
(30, '¿Qué técnica artística emplea la aplicación de pequeñas manchas de color?', 'Impresionismo', 'Puntillismo', 'Fresco', 'Temple', '2'),
(31, '¿Quién diseñó el Museo Guggenheim de Bilbao?', 'Frank Gehry', 'Zaha Hadid', 'Norman Foster', 'Renzo Piano', '1'),
(32, '¿Qué artista renacentista fue también un famoso inventor y científico?', 'Leonardo da Vinci', 'Michelangelo', 'Raphael', 'Donatello', '1'),
(33, '¿Qué corriente artística se caracteriza por la emoción y la exaltación de la naturaleza?', 'Realismo', 'Neoclasicismo', 'Romanticismo', 'Barroco', '3'),
(34, '¿Quién fue la primera mujer en ganar el Premio Turner?', 'Helen Frankenthaler', 'Rachel Whiteread', 'Griselda Pollock', 'Anya Gallaccio', '2'),
(35, '¿Qué artista es conocido por sus esculturas monumentales de globos?', 'Jeff Koons', 'Damien Hirst', 'Anish Kapoor', 'Richard Serra', '1'),
(36, '¿Qué estilo arquitectónico se caracteriza por sus arcos apuntados y vidrieras?', 'Renacentista', 'Románico', 'Barroco', 'Gótico', '4'),
(37, '¿Qué artista mexicano fue muralista y esposo de Frida Kahlo?', 'David Alfaro Siqueiros', 'José Clemente Orozco', 'Diego Rivera', 'Rufino Tamayo', '3'),
(38, '¿Cuál es el nombre del grupo de rock argentino liderado por Charly García en los 80?', 'Soda Stereo', 'Seru Giran', 'Los Fabulosos Cadillacs', 'Patricio Rey y sus Redonditos de Ricota', '2'),
(39, '¿Quién es el cantante de la banda argentina \"Soda Stereo\"?', 'Luis Alberto Spinetta', 'Charly García', 'Gustavo Cerati', 'Fito Páez', '3'),
(40, '¿Qué instrumento es característico en el tango argentino?', 'Batería', 'Bandoneón', 'Saxofón', 'Guitarra eléctrica', '2'),
(41, '¿Qué álbum de Pink Floyd es un clásico del rock progresivo?', 'The Wall', 'Abbey Road', 'Dark Side of the Moon', 'Led Zeppelin IV', '3'),
(42, '¿Qué cantante estadounidense es conocido como \"El Rey del Rock\"?', 'Michael Jackson', 'Elvis Presley', 'Prince', 'Bob Dylan', '2'),
(43, '¿Quién compuso la ópera \"La Traviata\"?', 'Giuseppe Verdi', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Richard Wagner', '1'),
(44, '¿Qué género musical mezcla jazz y ritmos caribeños?', 'Reggae', 'Bossa Nova', 'Salsa', 'Jazz Latino', '2'),
(45, '¿Quién es conocido como el \"Padre del Rock and Roll\"?', 'Chuck Berry', 'Little Richard', 'Elvis Presley', 'Jerry Lee Lewis', '1'),
(46, '¿Qué banda inglesa es famosa por la canción \"Bohemian Rhapsody\"?', 'The Beatles', 'Queen', 'The Rolling Stones', 'Pink Floyd', '2'),
(47, '¿Qué cantante argentino es conocido por fusionar rock con folklore?', 'Gustavo Cerati', 'León Gieco', 'Charly García', 'Luis Alberto Spinetta', '2'),
(48, '¿Qué género musical se popularizó en Jamaica en los 60s?', 'Reggae', 'Ska', 'Dancehall', 'Rocksteady', '1'),
(49, '¿Qué instrumentista es famoso por sus solos en la guitarra eléctrica en Led Zeppelin?', 'Eric Clapton', 'Jimmy Page', 'Slash', 'Jimi Hendrix', '2'),
(50, '¿Quién fue la cantante de la banda Fleetwood Mac durante los 70?', 'Stevie Nicks', 'Janis Joplin', 'Joan Jett', 'Debbie Harry', '1'),
(51, '¿Qué músico argentino fue miembro fundador de \"Almendra\"?', 'Andrés Calamaro', 'Charly García', 'Fito Páez', 'Luis Alberto Spinetta', '4'),
(52, '¿Cuál es el nombre del festival de música y arte que comenzó en 1969 en EE.UU.?', 'Coachella', 'Glastonbury', 'Woodstock', 'Lollapalooza', '3'),
(53, '¿Qué género mezcla hip hop, electrónica y funk?', 'Trap', 'Drum and Bass', 'Nu-Disco', 'Funk Carioca', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciencia`
--

CREATE TABLE `ciencia` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `opcion1` varchar(100) NOT NULL,
  `opcion2` varchar(100) NOT NULL,
  `opcion3` varchar(100) NOT NULL,
  `opcion4` varchar(100) NOT NULL,
  `correcta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciencia`
--

INSERT INTO `ciencia` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, '¿Qué es el deuterio?', 'Un isótopo', 'Agua', 'Un átomo', 'Nada', '1'),
(2, '¿Cuál es la estrella más cercana a la Tierra?', 'Sirius', 'Betelgeuse', 'Próxima Centauri', 'Alpha Centauri A', '3'),
(3, '¿Qué planeta tiene el mayor campo magnético en el sistema solar?', 'Marte', 'Júpiter', 'Saturno', 'Venus', '2'),
(4, '¿Qué partícula subatómica tiene carga positiva?', 'Electrón', 'Neutrón', 'Protón', 'Positrón', '3'),
(5, '¿Qué ley describe la relación entre fuerza, masa y aceleración?', 'Ley de gravitación universal', 'Segunda Ley de Newton', 'Ley de conservación de energía', 'Ley de Boyle', '2'),
(6, '¿Cuál es el propósito principal del motor cohete de tipo “F-1”?', 'Propulsión de aviones', 'Propulsión de cohetes espaciales', 'Generar electricidad', 'Control de temperatura', '2'),
(7, '¿Cuál es la unidad de medida de la fuerza?', 'Newton', 'Joule', 'Watt', 'Pascal', '1'),
(8, '¿Qué es un agujero negro?', 'Una estrella gigante', 'Una región con campo gravitatorio tan fuerte que nada escapa', 'Un planeta en colapso', 'Una nebulosa', '2'),
(9, '¿Qué significa la sigla “NASA”?', 'National Aerospace and Space Agency', 'National Astronomy and Science Association', 'National Aeronautics and Space Administration', 'North American Space Administration', '3'),
(10, '¿Qué fenómeno explica el corrimiento al rojo en la luz de galaxias distantes?', 'Efecto Doppler', 'Dispersión', 'Refracción', 'Difracción', '1'),
(11, '¿Cuál es la velocidad de escape aproximada de la Tierra?', '7.9 km/s', '11.2 km/s', '30 km/s', '3.5 km/s', '2'),
(12, '¿Qué tipo de estrella terminará su vida como una supernova?', 'Estrella de neutrones', 'Estrella enana blanca', 'Estrella masiva', 'Enana roja', '3'),
(13, '¿Qué es el plasma?', 'Un gas ionizado', 'Un sólido', 'Un líquido', 'Una estrella', '1'),
(14, '¿Cuál es la función del sistema de control de actitud en una nave espacial?', 'Controlar velocidad', 'Orientar la nave en el espacio', 'Producir energía', 'Comunicarse con tierra', '2'),
(15, '¿Quién propuso la teoría de la relatividad general?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Niels Bohr', '2'),
(16, '¿Qué es la ionosfera?', 'Una capa de gases ionizados en la atmósfera terrestre', 'La superficie del Sol', 'Una estrella cercana', 'Un planeta gaseoso', '1'),
(17, '¿Cuál es el combustible más común usado en cohetes?', 'Gasolina', 'Hidrógeno líquido', 'Metano', 'Queroseno', '2'),
(18, '¿Qué unidad mide la presión?', 'Newton', 'Pascal', 'Joule', 'Watt', '2'),
(19, '¿Qué método se usa para medir la distancia a estrellas cercanas?', 'Interferometría', 'Redshift', 'Espectroscopía', 'Paralaje estelar', '4'),
(20, '¿Cuál es el principal gas de la atmósfera de Marte?', 'Oxígeno', 'Dióxido de carbono', 'Nitrógeno', 'Argón', '2'),
(21, '¿Qué es un satélite geosincrónico?', 'Un satélite que orbita a diferente velocidad que la Tierra', 'Un satélite que cambia su órbita constantemente', 'Un satélite que orbita la Luna', 'Un satélite que siempre está sobre el mismo punto de la Tierra', '4'),
(22, '¿Qué material es comúnmente usado para los escudos térmicos de naves espaciales?', 'Aluminio', 'Fibra de carbono', 'Titanio', 'Cerámica ablativa', '4'),
(23, '¿Qué tipo de radiación emiten principalmente las estrellas jóvenes y calientes?', 'Infrarroja', 'Ultravioleta', 'Microondas', 'Ondas de radio', '2'),
(24, '¿Cuál es la fórmula para calcular el empuje en un motor cohete?', 'Empuje = masa x aceleración', 'Empuje = velocidad de escape x masa de combustible', 'Empuje = tasa de flujo másico x velocidad de escape', 'Empuje = presión x área', '3'),
(25, '¿Qué misión llevó al primer ser humano a la Luna?', 'Sputnik 1', 'Apollo 11', 'Voyager 1', 'Challenger', '2'),
(26, '¿Cuál es el elemento más abundante en la corteza terrestre?', 'Oxígeno', 'Hierro', 'Silicio', 'Aluminio', '1'),
(27, '¿Qué partícula subatómica tiene carga negativa?', 'Protón', 'Electrón', 'Neutrón', 'Positrón', '2'),
(28, '¿Cuál es la unidad básica de la vida?', 'Molécula', 'Átomo', 'Célula', 'Órgano', '3'),
(29, '¿Qué gas es esencial para la fotosíntesis?', 'Dióxido de carbono', 'Oxígeno', 'Nitrógeno', 'Metano', '1'),
(30, '¿Qué planeta es conocido como el planeta rojo?', 'Marte', 'Venus', 'Júpiter', 'Saturno', '1'),
(31, '¿Cuál es la velocidad de la luz en el vacío?', '300.000 km/s', '150.000 km/s', '1.000 km/s', '299.792 km/s', '4'),
(32, '¿Qué científico propuso la ley de la gravitación universal?', 'Nikola Tesla', 'Albert Einstein', 'Isaac Newton', 'Galileo Galilei', '3'),
(33, '¿Qué tipo de energía se libera en las reacciones de fusión nuclear?', 'Energía química', 'Energía eléctrica', 'Energía térmica y radiactiva', 'Energía mecánica', '3'),
(34, '¿Qué órgano del cuerpo humano produce insulina?', 'Hígado', 'Páncreas', 'Riñón', 'Corazón', '2'),
(35, '¿Qué planeta del sistema solar tiene más lunas conocidas?', 'Saturno', 'Júpiter', 'Marte', 'Urano', '2'),
(36, '¿Qué fenómeno explica la dispersión de la luz azul en la atmósfera?', 'Difracción', 'Reflexión', 'Refracción', 'Dispersión Rayleigh', '4'),
(37, '¿Cuál es el gas más abundante en la atmósfera terrestre?', 'Oxígeno', 'Nitrógeno', 'Argón', 'Dióxido de carbono', '2'),
(38, '¿Qué instrumento se usa para medir la presión atmosférica?', 'Barómetro', 'Termómetro', 'Higrómetro', 'Anemómetro', '1'),
(39, '¿Qué elemento químico tiene el símbolo Fe?', 'Fósforo', 'Hierro', 'Flúor', 'Francio', '2'),
(40, '¿Qué partícula fue descubierta primero?', 'Neutrón', 'Protón', 'Electrón', 'Quark', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `opcion1` varchar(100) NOT NULL,
  `opcion2` varchar(100) NOT NULL,
  `opcion3` varchar(100) NOT NULL,
  `opcion4` varchar(100) NOT NULL,
  `correcta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, '¿Cuál es el país con más títulos de la Copa Mundial de Fútbol?', 'Italia', 'Alemania', 'Brasil', 'Argentina', '3'),
(2, '¿En qué deporte se utiliza el término \"hole-in-one\"?', 'Golf', 'Tenis', 'Béisbol', 'Cricket', '1'),
(3, '¿Quién tiene el récord mundial de los 100 metros planos masculinos?', 'Carl Lewis', 'Usain Bolt', 'Justin Gatlin', 'Yohan Blake', '2'),
(4, '¿En qué año se celebraron los primeros Juegos Olímpicos modernos?', '1912', '1900', '1888', '1896', '4'),
(5, '¿Cuál es la duración oficial de un partido de fútbol profesional?', '60 minutos', '90 minutos', '120 minutos', '80 minutos', '2'),
(6, '¿Qué país es conocido como la cuna del rugby?', 'Australia', 'Sudáfrica', 'Nueva Zelanda', 'Inglaterra', '4'),
(7, '¿Quién es considerado el mejor tenista masculino de la historia según títulos de Grand Slam?', 'Roger Federer', 'Rafael Nadal', 'Novak Djokovic', 'Pete Sampras', '2'),
(8, '¿En qué deporte profesional es más común el uso del término \"alley-oop\"?', 'Baloncesto', 'Voleibol', 'Fútbol americano', 'Béisbol', '1'),
(9, '¿Qué ciudad fue sede de los Juegos Olímpicos de verano en 2016?', 'Londres', 'Tokio', 'Río de Janeiro', 'Beijing', '3'),
(10, '¿Quién es el máximo goleador histórico de la Liga española?', 'Telmo Zarra', 'Cristiano Ronaldo', 'Lionel Messi', 'Raúl González', '3'),
(11, '¿Cuál es el deporte nacional de Japón?', 'Kendo', 'Judo', 'Karate', 'Sumo', '4'),
(12, '¿Qué país ganó la primera Copa Mundial de Fútbol?', 'Brasil', 'Uruguay', 'Italia', 'Argentina', '2'),
(13, '¿En qué deporte se compite en la “Tour de Francia”?', 'Ciclismo', 'Atletismo', 'Esquí', 'Automovilismo', '1'),
(14, '¿Cuál es el nombre del torneo de tenis que se juega en césped en Londres?', 'Wimbledon', 'Roland Garros', 'US Open', 'Australian Open', '1'),
(15, '¿Qué boxeador es conocido como \"El más grande\" y ganó tres veces el título mundial de peso pesado?', 'Mike Tyson', 'Muhammad Ali', 'Joe Frazier', 'George Foreman', '2'),
(16, '¿Cuántos jugadores hay en cancha por equipo en un partido de rugby union?', '13', '11', '15', '7', '3'),
(17, '¿Cuál es el récord de puntos en un solo partido de la NBA?', '100', '81', '92', '85', '2'),
(18, '¿Quién ganó más medallas olímpicas en la historia?', 'Michael Phelps', 'Usain Bolt', 'Larisa Latynina', 'Mark Spitz', '1'),
(19, '¿Qué significa la sigla NFL?', 'National Football League Soccer', 'National Football League', 'National Freestyle League', 'National Fencing League', '2'),
(20, '¿Cuál es la duración de un partido de tenis en Grand Slam en sets masculinos?', 'Mejor de 5 sets', 'Mejor de 3 sets', 'Mejor de 7 sets', 'Solo 1 set', '1'),
(21, '¿Qué país inventó el hockey sobre hielo?', 'Canadá', 'Estados Unidos', 'Rusia', 'Suecia', '1'),
(22, '¿En qué deporte profesional se utiliza un “puck”?', 'Hockey sobre hielo', 'Fútbol americano', 'Baloncesto', 'Lacrosse', '1'),
(23, '¿Cuál es la distancia oficial de un maratón?', '42 km', '42.195 km', '50 km', '38.5 km', '2'),
(24, '¿Quién es el futbolista argentino conocido como “El Diez”?', 'Lionel Messi', 'Diego Maradona', 'Juan Román Riquelme', 'Carlos Tevez', '2'),
(25, '¿En qué deporte se utiliza un “snatch” y un “clean and jerk”?', 'Levantamiento de pesas', 'CrossFit', 'Gimnasia', 'Atletismo', '1'),
(26, '¿Cuál es la duración de un partido de básquet profesional en la NBA?', '60 minutos', '40 minutos', '48 minutos', '30 minutos', '3'),
(27, '¿Qué país tiene más títulos en la Copa América de fútbol?', 'Uruguay', 'Argentina', 'Brasil', 'Chile', '2'),
(28, '¿Cuál es el nombre de la técnica de esquí que permite descender con velocidad controlada?', 'Telesilla', 'Carving', 'Slalom', 'Telemark', '2'),
(29, '¿Qué piloto tiene más campeonatos mundiales de Fórmula 1?', 'Lewis Hamilton', 'Sebastian Vettel', 'Michael Schumacher', 'Ayrton Senna', '3'),
(30, '¿En qué deporte se usa una raqueta y una pelota amarilla pequeña para puntos rápidos?', 'Tenis de mesa', 'Squash', 'Badminton', 'Tenis', '2'),
(31, '¿Qué país tiene la liga de fútbol americano más popular?', 'Estados Unidos', 'Canadá', 'México', 'Brasil', '1'),
(32, '¿Quién es el tenista español con más títulos de Grand Slam?', 'Carlos Moyá', 'Rafael Nadal', 'David Ferrer', 'Manuel Santana', '2'),
(33, '¿En qué deporte se utiliza el término “hat-trick”?', 'Fútbol', 'Cricket', 'Hockey', 'Todos los anteriores', '4'),
(34, '¿Cuál es la velocidad aproximada de una pelota en el saque de tenis profesional?', 'Más de 250 km/h', 'Entre 100-130 km/h', 'Entre 80-110 km/h', 'Entre 150-200 km/h', '4'),
(35, '¿Qué país fue sede de los Juegos Olímpicos de Invierno en 2018?', 'Corea del Sur', 'Japón', 'China', 'Canadá', '1'),
(36, '¿En qué deporte se compite en la NBA?', 'Baloncesto', 'Béisbol', 'Fútbol americano', 'Hockey sobre hielo', '1'),
(37, '¿Cuál es el nombre del evento anual de ciclismo de ruta más importante en Italia?', 'Vuelta a España', 'Tour de Francia', 'Giro de Italia', 'Paris-Roubaix', '3'),
(38, '¿Quién ganó la Copa Mundial de Rugby en 2019?', 'Australia', 'Nueva Zelanda', 'Inglaterra', 'Sudáfrica', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia`
--

CREATE TABLE `historia` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `opcion1` varchar(100) NOT NULL,
  `opcion2` varchar(100) NOT NULL,
  `opcion3` varchar(100) NOT NULL,
  `opcion4` varchar(100) NOT NULL,
  `correcta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historia`
--

INSERT INTO `historia` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, '¿En qué año terminó la Guerra de los Cien Años?', '1492', '1453', '1415', '1380', '2'),
(2, '¿Quién fue el principal autor de las \"95 tesis\" que dieron inicio a la Reforma Protestante?', 'Ulrich Zuinglio', 'Juan Calvino', 'Ignacio de Loyola', 'Martín Lutero', '4'),
(3, '¿Cuál fue la capital del Imperio Inca?', 'Quito', 'Cusco', 'Lima', 'La Paz', '2'),
(4, '¿Qué tratado puso fin a la Primera Guerra Mundial?', 'Tratado de París', 'Tratado de Versalles', 'Tratado de Tordesillas', 'Tratado de Utrecht', '2'),
(5, '¿Quién lideró la Revolución Haitiana?', 'Simón Bolívar', 'Toussaint Louverture', 'Jean-Jacques Dessalines', 'François Duvalier', '2'),
(6, '¿Cuál fue el motivo principal de la Guerra de los Treinta Años?', 'Conflicto territorial', 'Disputas religiosas', 'Reformas económicas', 'Lucha por la independencia', '2'),
(7, '¿Qué civilización antigua construyó Machu Picchu?', 'Azteca', 'Maya', 'Inca', 'Olmeca', '3'),
(8, '¿Quién fue el primer emperador romano?', 'Julio César', 'Augusto', 'Nerón', 'Calígula', '2'),
(9, '¿En qué año cayó el Imperio Romano de Occidente?', '476 d.C.', '1453 d.C.', '330 d.C.', '395 d.C.', '1'),
(10, '¿Qué evento histórico comenzó en 1789?', 'Revolución Industrial', 'Revolución Francesa', 'Guerra de Independencia de Estados Unidos', 'Guerra Napoleónica', '2'),
(11, '¿Quién fue el líder soviético durante la Segunda Guerra Mundial?', 'Nikita Jrushchov', 'Vladimir Lenin', 'Josef Stalin', 'Leon Trotsky', '3'),
(12, '¿Cuál fue la principal causa de la Guerra Civil Española?', 'Conflictos religiosos', 'Lucha por el poder entre republicanos y nacionalistas', 'Intervención extranjera', 'Problemas económicos', '2'),
(13, '¿Qué emperador chino inició la construcción de la Gran Muralla?', 'Tang Taizong', 'Han Wudi', 'Qin Shi Huang', 'Kangxi', '3'),
(14, '¿Qué documento limitó el poder del rey en Inglaterra en 1215?', 'Carta Magna', 'Bill of Rights', 'Habeas Corpus', 'Acta de Unión', '1'),
(15, '¿Qué guerra enfrentó a Atenas y Esparta?', 'Guerras Médicas', 'Guerra del Peloponeso', 'Guerra de Troya', 'Guerras Púnicas', '2'),
(16, '¿Quién fue el fundador del Imperio Mongol?', 'Kublai Khan', 'Gengis Kan', 'Tamerlán', 'Ögedei Kan', '2'),
(17, '¿Cuál fue la causa principal de la Revolución Industrial?', 'Descubrimientos geográficos', 'Guerras', 'Revoluciones políticas', 'Innovaciones tecnológicas y cambio en la producción', '4'),
(18, '¿Qué civilización construyó las pirámides de Egipto?', 'Mesopotámica', 'Egipcia', 'Romana', 'Griega', '2'),
(19, '¿Quién fue el primer presidente de los Estados Unidos?', 'Thomas Jefferson', 'George Washington', 'Abraham Lincoln', 'John Adams', '2'),
(20, '¿Qué tratado dividió el Nuevo Mundo entre España y Portugal?', 'Tratado de Versalles', 'Tratado de París', 'Tratado de Tordesillas', 'Tratado de Utrecht', '3'),
(21, '¿Quién fue la reina de Francia durante la Revolución Francesa?', 'María Antonieta', 'Isabel I', 'Catalina de Médici', 'Juana de Arco', '1'),
(22, '¿Qué evento marcó el inicio de la Segunda Guerra Mundial?', 'Ataque a Pearl Harbor', 'Invasión de Polonia', 'Batalla de Stalingrado', 'Desembarco en Normandía', '2'),
(23, '¿Quién fue el líder del movimiento de independencia de la India?', 'Jawaharlal Nehru', 'Bhagat Singh', 'Subhas Chandra Bose', 'Mahatma Gandhi', '4'),
(24, '¿Cuál fue la civilización precolombina que habitó en lo que hoy es México y construyó Teotihuacán?', 'Azteca', 'Maya', 'Olmeca', 'Tolteca', '1'),
(25, '¿Qué imperio fue conocido por su red de caminos que facilitaba la comunicación y el control?', 'Imperio Romano', 'Imperio Inca', 'Imperio Otomano', 'Imperio Bizantino', '2'),
(26, '¿Qué evento histórico se conoce como \"La Caída de Constantinopla\"?', 'El saqueo de los vikingos', 'La destrucción durante la Primera Cruzada', 'La conquista de la ciudad por los turcos otomanos en 1453', 'La destrucción causada por un terremoto', '3'),
(27, '¿Quién fue el líder de la Revolución Rusa de 1917?', 'Leon Trotsky', 'Vladimir Lenin', 'Josef Stalin', 'Nikolái II', '2'),
(28, '¿Qué civilización antigua desarrolló el sistema cuneiforme?', 'Egipcios', 'Romanos', 'Mayas', 'Mesopotámicos', '4'),
(29, '¿Cuál fue la principal causa de la Guerra de Secesión en Estados Unidos?', 'Disputas económicas entre el norte y el sur', 'La esclavitud', 'Diferencias religiosas', 'Problemas territoriales', '2'),
(30, '¿Qué imperio construyó la ciudad de Tenochtitlán?', 'Azteca', 'Maya', 'Inca', 'Tolteca', '1'),
(31, '¿Quién fue la última emperatriz del Imperio Austrohúngaro?', 'Maria Teresa', 'Ana de Austria', 'Isabel de Baviera (Sissi)', 'Catalina de Aragón', '3'),
(32, '¿Qué tratado puso fin a la Guerra Franco-Prusiana?', 'Tratado de Versalles', 'Tratado de Frankfurt', 'Tratado de París', 'Tratado de Tordesillas', '2'),
(33, '¿Quién fue conocido como \"El Libertador\" en América Latina?', 'José de San Martín', 'Bernardo O’Higgins', 'Miguel Hidalgo', 'Simón Bolívar', '4'),
(34, '¿Cuál fue el principal objetivo de las Cruzadas?', 'Expandir el comercio', 'Recuperar Tierra Santa', 'Fundar nuevos reinos', 'Descubrir nuevas rutas', '2'),
(35, '¿Qué imperio estaba gobernado por los zares?', 'Imperio Ruso', 'Imperio Otomano', 'Imperio Romano', 'Imperio Persa', '1'),
(36, '¿Qué acontecimiento dio inicio a la Edad Moderna?', 'Caída del Imperio Romano de Occidente', 'Descubrimiento de América', 'Invención de la imprenta', 'La Reforma Protestante', '2'),
(37, '¿Quién fue el líder de la unificación alemana en el siglo XIX?', 'Otto von Bismarck', 'Wilhelm II', 'Friedrich Nietzsche', 'Karl Marx', '1'),
(38, '¿Qué ciudad fue conocida como la \"Ciudad de las Siete Colinas\"?', 'Jerusalén', 'Atenas', 'Estambul', 'Roma', '4'),
(39, '¿Qué evento provocó el inicio de la Revolución Rusa?', 'La Primera Guerra Mundial', 'La crisis económica', 'La Revolución Francesa', 'El golpe de Estado', '1'),
(40, '¿Quién fue el emperador francés durante las guerras napoleónicas?', 'Luis XVI', 'Napoleón Bonaparte', 'Carlos X', 'Luis XVIII', '2'),
(41, '¿Cuál fue el primer imperio en establecer un sistema legal codificado?', 'Imperio Romano', 'Imperio Asirio', 'Imperio Persa', 'Imperio Babilónico', '4'),
(42, '¿Qué faraón egipcio fue conocido por su tumba intacta encontrada en 1922?', 'Tutankamón', 'Ramsés II', 'Cleopatra', 'Akhenatón', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `literatura`
--

CREATE TABLE `literatura` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `opcion1` varchar(100) NOT NULL,
  `opcion2` varchar(100) NOT NULL,
  `opcion3` varchar(100) NOT NULL,
  `opcion4` varchar(100) NOT NULL,
  `correcta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `literatura`
--

INSERT INTO `literatura` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, '¿Quién escribió la novela “Tau Zero” sobre relatividad y viajes interestelares extremos?', 'Arthur C. Clarke', 'Robert Heinlein', 'Poul Anderson', 'Isaac Asimov', '3'),
(2, '¿Qué novela especulativa describe un futuro lejano con múltiples linajes humanos modificados evolutivamente?', 'Blindsight', 'All Tomorrows', 'Tau Zero', 'The Killing Star', '2'),
(3, '¿Cuál novela de ciencia ficción aborda un ataque devastador a la Tierra mediante misiles relativistas?', 'The Killing Star', 'Foundation', 'Dune', 'Neuromancer', '1'),
(4, '¿Quién escribe “Blindsight”, novela que explora conciencia, inteligencia alienígena y neurología?', 'Stanislaw Lem', 'Greg Egan', 'Peter Watts', 'Alastair Reynolds', '3'),
(5, '¿Qué obra influenció claramente a “All Tomorrows” en su concepción de evolución explorable?', '1984', 'Foundation', 'Brave New World', 'Last and First Men', '4'),
(6, '¿Cuál obra visionaria de Olaf Stapledon presenta multitud de generaciones humanas futuras?', 'Star Maker', 'Last and First Men', 'Childhood\'s End', 'Contact', '2'),
(7, '¿Qué novela de Clarke describe la evolución de la conciencia humana mediante monolitos alienígenas?', 'Foundation', 'Tau Zero', '2001: A Space Odyssey', 'Dune', '3'),
(8, '¿Qué autor escribió “La sombra fuera del tiempo” y aborda identidad alienígena o temporal?', 'Robert Silverberg', 'Philip K. Dick', 'Arthur C. Clarke', 'H. P. Lovecraft', '4'),
(9, '¿Qué libro combina filosofía con ambientación de ciencia ficción sobre libre albedrío y mente?', 'Blindsight', 'Solaris', 'Do Androids Dream of Electric Sheep?', 'I, Robot', '1'),
(10, '¿Qué novela de Greg Egan examina identidad consciente, memoria y transferencia mental?', 'Diaspora', 'Tau Zero', 'Permutation City', 'All Tomorrows', '3'),
(11, '¿Quién escribió “The Time Machine”, visionaria novela de viajes en el tiempo y evolución humana?', 'H. G. Wells', 'Julio Verne', 'Michael Moorcock', 'Ray Bradbury', '1'),
(12, '¿Qué texto filosófico utópico presenta la caída y transformación de civilizaciones?', 'La República', 'La Historia del Declive y Caída del Imperio Romano', 'All Tomorrows', 'Last and First Men', '2'),
(13, '¿Qué novela de Clarke discute el fin de la Era Humana y trascendencia colectiva?', 'Childhood\'s End', 'Tau Zero', 'Blindsight', 'The Killing Star', '1'),
(14, '¿Cuál autor combina ciencia ficción con horror cósmico y especulación filosófica radical?', 'Philip K. Dick', 'Peter Watts', 'Robert Heinlein', 'Greg Bear', '2'),
(15, '¿Quién escribió “Children of Time”, sobre evolución dirigida y especiación en arañas inteligentes?', 'Neal Stephenson', 'Alastair Reynolds', 'Octavia Butler', 'Adrian Tchaikovsky', '4'),
(16, '¿Qué novela describe la colonización de ciudades flotantes interestelares tras crisis terrestre?', 'All Tomorrows', 'Tau Zero', 'Cities in Flight', 'The Killing Star', '3'),
(17, '¿En qué obra aparece una inteligencia artificial que manipula percepciones de conciencia?', 'Blindsight', 'Stranger in a Strange Land', 'Neuromancer', 'Dune', '1'),
(18, '¿Qué autor fue precursor del “future history” en ciencia ficción, creando cronologías extensas?', 'Philip K. Dick', 'Arthur Clarke', 'Isaac Asimov', 'Robert Heinlein', '4'),
(19, '¿Cuál novela de Stapledon es considerada predecesora literaria de All Tomorrows?', 'Star Maker', 'Last and First Men', 'Childhood\'s End', 'Brave New World', '2'),
(20, '¿Qué novela aborda la invención del viaje en el tiempo y el dilema moral del viajero?', 'The Time Machine', 'Tau Zero', 'Ringworld', 'Hyperion', '1'),
(21, '¿Qué autora escribió sobre una sociedad sin género en planeta alienígena y reflexiona sobre política y filosofía?', 'Ursula K. Le Guin', 'Octavia Butler', 'Andre Norton', 'Margaret Atwood', '1'),
(22, '¿Qué obra combina visión posthumana con especulación filosófica sobre lenguaje y cosmos?', 'Blindsight', 'Tau Zero', 'Star Maker', 'All Tomorrows', '3'),
(23, '¿Quién escribió “The Left Hand of Darkness”, explorando género y política en planeta alienígena?', 'Ursula K. Le Guin', 'Isaac Asimov', 'J. G. Ballard', 'Mary Shelley', '1'),
(24, '¿Qué novela de Reynolds explora humanos modificados genéticamente viviendo bajo el océano?', 'Tau Zero', 'On the Steel Breeze', 'Dune', 'Blindsight', '2'),
(25, '¿Qué obra de Neal Stephenson especula sobre supervivencia humana tras fragmentación orbital de la Tierra?', 'All Tomorrows', 'Tau Zero', 'The Killing Star', 'Seveneves', '4'),
(26, '¿Qué novela clásica presenta la confrontación de la humanidad con inteligencias no terrestres incomprensibles?', 'Contact', 'Blindsight', 'Solaris', 'The Killing Star', '3'),
(27, '¿Qué autor escribió “Hyperion”, mezcla de epopeya literaria con preguntas filosóficas profundas?', 'Dan Simmons', 'Frank Herbert', 'Philip K. Dick', 'Arthur Clarke', '1'),
(28, '¿Qué novela aborda clones religiosos y colonias humanas ocultas en el sistema solar?', 'The Killing Star', 'Blindsight', 'Tau Zero', 'All Tomorrows', '1'),
(29, '¿Qué texto especula sobre la potencial extinción humana como resultado del contacto relativista?', 'Tau Zero', 'The Killing Star', 'All Tomorrows', 'Blindsight', '2'),
(30, '¿Qué novela explora la inteligencia alienígena como “algo real y verdadero” concebido científicamente?', 'Neuromancer', 'Dune', 'Foundation', 'Blindsight', '4'),
(31, '¿Qué novela de Ballard reflexiona sobre ecología y transformación posthumana en un mundo inundado?', 'Blindsight', 'The Drowned World', 'Tau Zero', 'All Tomorrows', '2'),
(32, '¿Qué autor escribió “Man After Man”, obra de especulación evolutiva similar a All Tomorrows?', 'Olaf Stapledon', 'C. M. Kösemen', 'Dougal Dixon', 'Peter Watts', '3'),
(33, '¿Qué novela presenta robots asesinos autorreplicantes en guerra con la humanidad?', 'Berserker series', 'Blindsight', 'All Tomorrows', 'Tau Zero', '1'),
(34, '¿Quién escribió la saga “Dorsai”, basada en culturas divergentes humanas espaciales mercenarias?', 'Gordon R. Dickson', 'Robert Heinlein', 'Arthur C. Clarke', 'Isaac Asimov', '1'),
(35, '¿Qué novela de Banks reluce por imaginar sociedades espaciales y lenguaje exótico?', 'The Algebraist', 'Tau Zero', 'Dune', 'All Tomorrows', '1'),
(36, '¿Qué obra de Tolkien se considera precursor del world‑building extenso aunque no sci‑fi?', 'All Tomorrows', 'El Silmarillion', 'Tau Zero', 'Blindsight', '2'),
(37, '¿Qué libro combina ucronía filosófica y reflexión sobre humanidad y poder totalitario?', '1984', 'Brave New World', 'Last and First Men', 'The Waste Land', '1'),
(38, '¿Qué novela clásica de Asimov imaginó una Fundación interestelar para preservar conocimiento humano?', 'Foundation', 'Tau Zero', 'Blindsight', 'All Tomorrows', '1'),
(39, '¿Qué autor escribió “Solaris”, explorando lo desconocido y lo alienígena como otro yo humano?', 'Philip K. Dick', 'Peter Watts', 'Arthur C. Clarke', 'Stanislaw Lem', '4'),
(40, '¿Quién es el autor de la saga de ciencia ficción “The Xeelee Sequence”?', 'Greg Egan', 'Stephen Baxter', 'Peter Watts', 'Alastair Reynolds', '2'),
(41, '¿Qué entidad hipertecnológica construyó una estructura atravesando el universo observable en la saga Xeelee?', 'Los Photino Birds', 'Los humanos', 'Los Qax', 'Los Xeelee', '4'),
(42, '¿Qué papel juegan los “Photino Birds” en el universo de The Xeelee Sequence?', 'Enemigos de la materia bariónica', 'Aliados de los humanos', 'Constructores del universo', 'Parásitos biológicos', '1'),
(43, '¿Qué estructura astronómica ficticia aparece en la saga Xeelee, construida por una civilización avanzada?', 'Dyson Sphere', 'Xeelee Ring', 'El Ojo de Dios', 'Cinta de Niven', '2'),
(44, '¿Qué tema filosófico predomina en The Xeelee Sequence?', 'El lugar de la humanidad frente a inteligencias superiores', 'Ética biológica', 'Moralidad religiosa', 'El alma inmortal', '1'),
(45, '¿Qué nombre recibe el conflicto prolongado entre humanos y Xeelee?', 'La Guerra de la Ascensión', 'El Conflicto Primordial', 'La Guerra de la Luz', 'La Guerra de los Milenios', '4'),
(46, '¿Qué característica define a los Xeelee como especie?', 'Son dependientes de la IA', 'Son orgánicos y éticos', 'Dominan la física cuántica y la gravedad de forma absoluta', 'Son de origen humano', '3'),
(47, '¿Qué novela abre cronológicamente la saga The Xeelee Sequence?', 'Raft', 'Timelike Infinity', 'Ring', 'Vacuum Diagrams', '1'),
(48, '¿Qué concepto físico es explorado profundamente en The Xeelee Sequence?', 'La relatividad cuántica y el tiempo negativo', 'La alquimia moderna', 'La biología sintética', 'La teoría de cuerdas', '1'),
(49, '¿Qué obra de Baxter narra eventos de la saga desde una perspectiva posthumana avanzada?', 'Ring', 'Vacuum Diagrams', 'Flux', 'Xeelee: Vengeance', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntaje`
--

CREATE TABLE `puntaje` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `puntos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntaje`
--

INSERT INTO `puntaje` (`id`, `nombre`, `puntos`) VALUES
(1, 'topologia', 20),
(2, 'topologia', 40),
(3, 'topologia', 0),
(4, 'topologia', 30),
(5, '', 10),
(6, '', 50),
(7, 'taarsm18', 0),
(8, 'topogigio', 0),
(9, 'hola', 0),
(10, 'fsdfsdf', 0),
(11, 'fsdfsdf', 0),
(12, 'hola', 20),
(13, 'fdgdfg', 20),
(14, 'ROCIO', 40),
(15, 'dsfsdfsdfsdfTOPO1', 0),
(16, 'dsfsdfsdfsdfTOPO1', 0),
(17, 'fdgdfg', 20),
(18, 'Taars_m18', 100),
(19, 'xd', 0),
(20, 'facundo', 30),
(21, 'facundo', 10),
(22, 'duende', 40),
(23, 'lolo', 0),
(24, 'dsad', 30),
(25, 'dasdasfafsdfadf', 80),
(26, 'dasdasfafsdfadf', 0),
(27, 'hola', 0),
(28, 'gol', 0),
(29, 'fgdfg', 0),
(30, 's', 0),
(31, 'bastian', 30),
(32, 'a bue', 20),
(33, 'asd', 0),
(34, 'el facu', 50),
(35, 'uh', 10),
(36, 'sdgf', 10),
(37, 'sdgf', 0),
(38, 'pablo', 0),
(39, 'pablo v', 60),
(40, 'sdf', 20),
(41, 'ytopo', 0),
(42, 'asd', 40),
(43, 'fdsjkghfdsg', 0),
(44, 'asdasd', 0),
(45, 'sasas', 0),
(46, 'sasas', 0),
(47, 'sasas', 0),
(48, 'fgh', 10),
(49, 'ghfgh', 50),
(50, 'CHAT', 60),
(51, 'asdsd', 0),
(52, 'asd', 0),
(53, 'asd', 0),
(54, 'sda', 0),
(55, 'ghf', 0),
(56, 'dasd', 0),
(57, 'sdasd', 0),
(58, 'dasd', 0),
(59, 'sdasd', 0),
(60, 'sdasd', 0),
(61, 'sdasd', 0),
(62, 'sdasd', 0),
(63, 'sdasd', 0),
(64, 'sdasd', 0),
(65, 'sdasd', 0),
(66, 'sdasd', 0),
(67, 'sdasd', 0),
(68, 'sdasd', 0),
(69, 'sdasd', 0),
(70, 'sdasd', 0),
(71, 'sdasd', 0),
(72, 'sdasd', 0),
(73, 'osa', 100),
(74, 'dsadasd', 10),
(75, 'sad', 0),
(76, 'dsf', 30),
(77, 'dfsd', 0),
(78, 'sdsad', 0),
(79, 'sdsad', 0),
(80, 'sdsad', 0),
(81, 'sdsad', 0),
(82, 'sdsad', 0),
(83, 'sdsad', 0),
(84, 'sdsad', 0),
(85, 'sdsad', 0),
(86, 'sdsad', 0),
(87, 'sdsad', 0),
(88, 'sdsad', 0),
(89, 'sdsad', 0),
(90, 'sdsad', 0),
(91, 'ASD', 10),
(92, 'SDA', 0),
(93, 'SDA', 0),
(94, 'das', 40),
(95, 'sadfsfd', 0),
(96, 'sdfdsf', 0),
(97, 'sad', 0),
(98, 'ca', 20),
(99, 'elbastitopo', 0),
(100, 'sdkhfasdfaf', 10),
(101, 'asd', 10),
(102, 'a<sd', 0),
(103, 'df', 0),
(104, 'dasd', 0),
(105, 'dsad', 0),
(106, 'dasd', 0),
(107, 'dsad', 10),
(108, 'asd', 10),
(109, 'sad', 10),
(110, 'asdasd', 0),
(111, 'ayyy', 0),
(112, 'kuni', 0),
(113, 'xd', 10),
(114, 'asx', 10),
(115, 'kuni', 0),
(116, 'sadasd', 0),
(117, 'cualquiera', 0),
(118, 'dgsf', 0),
(119, 'lk', 0),
(120, 'MilanesaDep', 40),
(121, 'ROooo', 0),
(122, 'dold', 0),
(123, 'cjdij', 0),
(124, 'ROooo', 0),
(125, 'ROooo', 0),
(126, 'ROooo', 0),
(127, 'ROooo', 0),
(128, 'ROooo', 0),
(129, 'ROooo', 0),
(130, 'ROooo', 0),
(131, 'ROooo', 40),
(132, 'ROooo', 0),
(133, 'ROooo', 10),
(134, 'ROooo', 0),
(135, 'ROooo', 40),
(136, 'ROooo', 40),
(137, 'ROooo', 0),
(138, 'ROooo', 0),
(139, 'a', 30),
(140, 'osooo', 70),
(141, 'ROooo', 70),
(142, 'asd', 20),
(143, 'sadasd', 50),
(144, 'pablo', 0),
(145, 'pablo', 0),
(146, 'pablo', 0),
(147, 'pablo', 0),
(148, 'pablo', 0),
(149, 'pablo', 0),
(150, 'pablo', 10),
(151, 'pablo', 0),
(152, 'pablo', 10),
(153, 'pablo', 20),
(154, 'pablo', 0),
(155, 'Waaagh(orko)', 10),
(156, 'pablo', 20),
(157, 'Waaagh(orko)', 0),
(158, 'pablo', 0),
(159, 'Waaagh(orko)', 10),
(160, 'pablo', 0),
(161, 'pablo', 0),
(162, 'pablo v', 70),
(163, 'tevamosasuperarvelazquez', 160),
(164, 'xd', 40),
(165, 'Taars_M18', 170),
(166, 'xd?', 10),
(167, 'Facundo', 130),
(168, 'pablo', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugests`
--

CREATE TABLE `sugests` (
  `id` int(11) NOT NULL,
  `comentario` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugests`
--

INSERT INTO `sugests` (`id`, `comentario`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, 'dsadas'),
(9, 'xdd'),
(10, 'sdasd'),
(11, 'asdasd'),
(12, 'asdasd'),
(13, 'xd'),
(14, 'xd'),
(15, 'hola'),
(16, 'hola'),
(17, 'bastian'),
(18, 'hola'),
(19, 'hola'),
(20, ''),
(21, ''),
(22, ''),
(23, ''),
(24, ''),
(25, ''),
(26, 'AOOAOA'),
(27, 'AOOAOA'),
(28, 'AOOAOA'),
(29, 'AOOAOA'),
(30, 'AOOAOA'),
(31, 'AOOAOA'),
(32, 'AOOAOA'),
(33, 'AOOAOA'),
(34, 'AOOAOA'),
(35, 'AOOAOA'),
(36, 'AOOAOA'),
(37, 'AOOAOA'),
(38, 'AOOAOA'),
(39, 'AOOAOA'),
(40, 'AOOAOA'),
(41, ''),
(42, ''),
(43, ''),
(44, ''),
(45, ''),
(46, ''),
(47, ''),
(48, ''),
(49, ''),
(50, ''),
(51, ''),
(52, ''),
(53, 'wachin'),
(54, ''),
(55, ''),
(56, ''),
(57, 'hola'),
(58, 'joya'),
(59, 'joya'),
(60, 'joya'),
(61, 'joya'),
(62, 'joya'),
(63, 'joya'),
(64, 'joya'),
(65, 'joya'),
(66, 'joya'),
(67, 'joya'),
(68, 'joya'),
(69, 'joya'),
(70, 'joya'),
(71, 'joya'),
(72, 'joya'),
(73, 'joya'),
(74, 'joya');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arte`
--
ALTER TABLE `arte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciencia`
--
ALTER TABLE `ciencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `literatura`
--
ALTER TABLE `literatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntaje`
--
ALTER TABLE `puntaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sugests`
--
ALTER TABLE `sugests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arte`
--
ALTER TABLE `arte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `ciencia`
--
ALTER TABLE `ciencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `deportes`
--
ALTER TABLE `deportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `historia`
--
ALTER TABLE `historia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `literatura`
--
ALTER TABLE `literatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `puntaje`
--
ALTER TABLE `puntaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `sugests`
--
ALTER TABLE `sugests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
