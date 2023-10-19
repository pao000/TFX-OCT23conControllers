-- Crear la base de datos
CREATE SCHEMA trailerflix;

-- Referencia a la base de datos
USE trailerflix;

-- Crear la tabla "categorias"
CREATE TABLE categorias (
   categoriaID INT PRIMARY KEY,
   categoria VARCHAR(254)
);

-- Crear la tabla "generos"
CREATE TABLE generos (
   generoID INT PRIMARY KEY,
   genero VARCHAR(254)
);

-- Crear la tabla "actores"
CREATE TABLE actores (
   id INT PRIMARY KEY,
   actor VARCHAR(254)
);

-- Crear la tabla "contenido"
CREATE TABLE contenido (
   id INT PRIMARY KEY,
   poster VARCHAR(255),
   titulo VARCHAR(255),
   categoria VARCHAR(50),
   genero VARCHAR(255),
   resumen VARCHAR(2048),
   temporadas VARCHAR(50),
   reparto VARCHAR(255),
   trailer VARCHAR(255),
   categoriaID INT,
   generoID INT,
   repartoID INT,
   FOREIGN KEY (categoriaID) REFERENCES categorias(categoriaID),
   FOREIGN KEY (generoID) REFERENCES generos(generoID),
   FOREIGN KEY (repartoID) REFERENCES actores(id)
);

-- Crear la tabla "reparto_catalogo"
CREATE TABLE reparto_catalogo (
   reparto_catalogoID INT PRIMARY KEY,
   catalogoID INT,
   FOREIGN KEY (catalogoID) REFERENCES contenido(id)
);

-- Crear la tabla "reparto_genero"
CREATE TABLE reparto_genero (
   catalogoID INT,
   generoID INT,
   FOREIGN KEY (catalogoID) REFERENCES contenido(id),
   FOREIGN KEY (generoID) REFERENCES generos(generoID)
);



-- Insertar datos en la tabla "categorias"
INSERT INTO categorias (categoriaID, categoria) VALUES
(1, 'pelicula'),
(2, 'serie'),
(3, 'documental');

-- Insertar datos en la tabla "generos"
INSERT INTO generos (generoID, genero) VALUES
(1, 'acción'),
(2, 'Sci-Fi'),
(3, 'suspenso'),
(4, 'ficción'),
(5, 'comedia'),
(6, 'aventura'),
(7, 'fantasía'),
(8, 'terror'),
(9, 'drama'),
(10, 'historia'),
(11, 'intriga'),
(12, 'hechos verídicos');

-- Insertar datos en la tabla "contenido" para el segundo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   4, 
   'public/posters/4.jpg', 
   'The Umbrella Academy', 
   'Serie', 
   'Sci-Fi, Fantasía', 
   'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.', 
   1, 
   'Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   2
);

-- Insertar datos en la tabla "contenido" para el tercer elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   5, 
   'public/posters/5.jpg', 
   'Gambito de Dama', 
   'Serie', 
   'Drama, Ficción', 
   'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.', 
   1, 
   'Anya Taylor-Joy, Thomas Brodie-Sangster, Harry Melling, Moses Ingram, Chloe Pirrie, Janina Elkin', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   4
);

-- Insertar datos en la tabla "contenido" para el cuarto elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   6, 
   'public/posters/6.jpg', 
   'Enola Holmes', 
   'Película', 
   'Ficción, Drama, Misterio', 
   'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.', 
   0, 
   'Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar', 
   'https://www.youtube.com/watch?v=zh4KhVSMwtQ', 
   2, 
   2
);

-- Insertar datos en la tabla "contenido" para el quinto elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   2, 
   'public/posters/2.jpg', 
   'Riverdale', 
   'Serie', 
   'Drama, Ficción', 
   'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.', 
   5, 
   'Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   4
);


-- Insertar datos en la tabla "contenido" para el sexto elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   1, 
   'public/posters/1.jpg', 
   'The Crown', 
   'Serie', 
   'Drama, Hechos verídicos', 
   'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 
   4, 
   'Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   9
);

-- Insertar datos en la tabla "contenido" para el séptimo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   7, 
   'public/posters/7.jpg', 
   'Guasón', 
   'Película', 
   'Suspenso, Drama', 
   'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.', 
   0, 
   'Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham', 
   'https://www.youtube.com/embed/zAGVQLHvwOY', 
   1, 
   3
);

-- Insertar datos en la tabla "contenido" para el octavo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   8, 
   'public/posters/8.jpg', 
   'Avengers: End Game', 
   'Película', 
   'Aventura, Sci-Fi, Acción', 
   'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.', 
   0, 
   'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   1, 
   1
);

-- Insertar datos en la tabla "contenido" para el noveno elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   9, 
   'public/posters/9.jpg', 
   'Juego de tronos', 
   'Serie', 
   'Aventura, Fantasía, Drama', 
   'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', 
   8, 
   'Emilia Clarke, Lena Headey, Sophie Turner, Kit Harington, Peter Dinklage, Nikolaj Coster-Waldau', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   6
);

-- Insertar datos en la tabla "contenido" para el décimo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   10, 
   'public/posters/10.jpg', 
   'The Flash', 
   'Serie', 
   'Sci-Fi, Fantasía', 
   'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.', 
   6, 
   'Grant Gustin, Carlos Valdes, Danielle Panabaker, Candice Patton, Jesse L. Martin, Tom Cavanagh', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   2
);

-- Insertar datos en la tabla "contenido" para el undécimo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   11, 
   'public/posters/11.jpg', 
   'The Big Bang Theory', 
   'Serie', 
   'Comedia, Fantasía, Ficción', 
   'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.', 
   12, 
   'Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Melissa Rauch, Mayim Bialik', 
   'https://www.youtube.com/embed/WBb3fojgW0Q', 
   2, 
   4
);

-- Insertar datos en la tabla "contenido" para el duodécimo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   12, 
   'public/posters/12.jpg', 
   'Friends', 
   'Serie', 
   'Comedia, Drama', 
   "'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.", 
   10, 
   'Jennifer Aniston, Courteney Cox, Lisa Kudrow, David Schwimmer, Matthew Perry, Matt LeBlanc', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   5
);

-- Insertar datos en la tabla "contenido" para el decimotercer elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   13, 
   'public/posters/13.jpg', 
   'Anne with an "E"', 
   'Serie', 
   'Drama', 
   'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.', 
   2, 
   'Amybeth McNulty, Geraldine James, R. H. Thomson, Corrine Koslo, Dalila Bela, Lucas Jade Zumann', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   2, 
   9
);

-- Insertar datos en la tabla "contenido" para el decimocuarto elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   14, 
   'public/posters/14.jpg', 
   'Expedientes Secretos "X"', 
   'Serie', 
   'Drama, Sci-Fi', 
   'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de "siniestro".', 
   11, 
   'Gillian Anderson, David Duchovny, Mitch Pileggi, Robert Patrick, Tom Braidwood, Bruce Harwood', 
   'https://www.youtube.com/embed/KKziOmsJxzE', 
   2, 
   2
);

-- Insertar datos en la tabla "contenido" para el decimoquinto elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   15, 
   'public/posters/15.jpg', 
   'Chernobyl', 
   'Serie', 
   'Drama, Hechos verídicos', 
   'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.', 
   1, 
   'Jared Harris, Stellan Skarsgård, Emily Watson, Paul Ritter, Jessie Buckley, Adam Nagaitis', 
   'https://www.youtube.com/embed/s9APLXM9Ei8', 
   2, 
   9
);


-- -- Insertar datos en la tabla "contenido" para el decimosexto elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   16, 
   'public/posters/16.jpg', 
   'Westworld', 
   'Serie', 
   'Sci-Fi', 
   "'Westworld' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.", 
   3, 
   'Evan Rachel Wood, Thandie Newton, Jeffrey Wright, Tessa Thompson, Ed Harris, Luke Hemsworth', 
   'https://www.youtube.com/embed/qLFBcdd6Qw0', 
   2, 
   2
);

-- -- Insertar datos en la tabla "contenido" para el decimoséptimo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   17, 
   'public/posters/17.jpg', 
   'Halt and Catch Fire', 
   'Serie', 
   'Ficción, Drama', 
   "Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valley. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).", 
   4, 
   'Lee Pace, Scoot McNairy, Mackenzie Davis, Kerry Bishé, Toby Huss, Alana Cavanaugh', 
   'https://www.youtube.com/embed/pWrioRji60A', 
   2, 
   9
);

-- -- Insertar datos en la tabla "contenido" para el decimoctavo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   18, 
   'public/posters/18.jpg', 
   'Ava', 
   'Película', 
   'Acción, Drama, Suspenso', 
   "Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por su vida.", 
   0, 
   'Jessica Chastain, John Malkovich, Colin Farrell, Common, Geena Davis, Ioan Gruffudd', 
   'https://www.youtube.com/embed/aOC8E8z_ifw', 
   1, 
   2
);

-- -- Insertar datos en la tabla "contenido" para el decimonoveno elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   19, 
   'public/posters/19.jpg', 
   'Aves de presa y la fantabulosa emancipación de una Harley Quinn', 
   'Película', 
   'Acción, Ficción, Comedia', 
   "Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.", 
   0, 
   'Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina', 
   'https://www.youtube.com/embed/dtKMEAXyPkg', 
   1, 
   1
);

-- -- Insertar datos en la tabla "contenido" para el vigésimo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   20, 
   'public/posters/20.jpg', 
   'Archive', 
   'Película', 
   'Acción, Sci-Fi, Suspenso', 
   "2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.", 
   0, 
   'Stacy Martin, Rhona Mitra, Theo James, Peter Ferdinando, Lia Williams, Toby Jones', 
   'https://www.youtube.com/embed/VHSoCnDioAo', 
   1, 
   1
);

-- -- Insertar datos en la tabla "contenido" para el vigésimo primer elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   21, 
   'public/posters/21.jpg', 
   'Jumanji - The Next Level', 
   'Película', 
   'Comedia, Ficción, Aventura', 
   "Las aventuras continúan en el fantástico mundo del videojuego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?", 
   0, 
   'Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Awkwafina, Nick Jonas', 
   'https://www.youtube.com/embed/rBxcF-r9Ibs', 
   1, 
   4
);

-- -- Insertar datos en la tabla "contenido" para el vigésimo segundo elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   22, 
   'public/posters/22.jpg', 
   '3022', 
   'Película', 
   'Sci-Fi, Suspenso', 
   "La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forwards.", 
   0, 
   'Miranda Cosgrove, Kate Walsh, Omar Epps, Angus Macfadyen, Jorja Fox, Enver Gjokaj', 
   'https://www.youtube.com/embed/AGQ7OkmIx4Q', 
   1, 
   2
);

-- -- Insertar datos en la tabla "contenido" para el vigésimo tercer elemento del JSON
INSERT INTO contenido (id, poster, titulo, categoria, genero, resumen, temporadas, reparto, trailer, categoriaID, generoID, repartoID)
VALUES (
   23, 
   'public/posters/23.jpg', 
   'IT - Capítulo 2', 
   'Película', 
   'Terror, Suspenso, Fantasía');



CREATE VIEW vista_contenido AS
SELECT
    C.id AS id,
    C.poster AS poster,
    C.titulo AS titulo,
    cat.categoria AS categoria,
    gen.genero AS genero,
    C.resumen AS resumen,
    C.temporadas AS temporadas,
    GROUP_CONCAT(act.actor) AS reparto,
    C.trailer AS trailer
FROM contenido C
LEFT JOIN categorias cat ON C.categoriaID = cat.categoriaID
LEFT JOIN generos gen ON C.generoID = gen.generoID
LEFT JOIN reparto_catalogo rc ON C.id = rc.catalogoID
LEFT JOIN reparto_genero rg ON C.id = rg.catalogoID
LEFT JOIN actores act ON C.repartoID = act.id OR rg.generoID = act.id
GROUP BY C.id;


