CREATE DATABASE aelix_stream;
USE aelix_stream;


-- TABLA CATEGORIAS
CREATE TABLE categorias(
 id INT PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR(50)
);


-- TABLA PELICULAS
CREATE TABLE peliculas(
 id INT PRIMARY KEY AUTO_INCREMENT,
 titulo VARCHAR(150),
 anio INT,
 director VARCHAR(100),
 descripcion TEXT,
 puntuacion DECIMAL(3,1),
 id_categoria INT,
 FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);


-- TABLA USUARIOS
CREATE TABLE usuarios (
 id INT PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR(50),
 apellido VARCHAR(50),
 email VARCHAR(100) UNIQUE,
 usuario VARCHAR(50) UNIQUE,
 password VARCHAR(100),
 rol ENUM('admin','normal'),
 fecha_registro DATE
);


-- TABLA AMIGOS
CREATE TABLE amigos(
 id INT PRIMARY KEY AUTO_INCREMENT,
 usuario_id INT,
 amigo_id INT,
 FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
 FOREIGN KEY(amigo_id) REFERENCES usuarios(id)
);


-- TABLA PERFILES
CREATE TABLE perfiles(
 id INT PRIMARY KEY AUTO_INCREMENT,
 id_usuario INT,
 avatar VARCHAR(100),
 biografia VARCHAR(255),
 FOREIGN KEY(id_usuario) REFERENCES usuarios(id)
);

-- TABLA FAVORITOS
CREATE TABLE favoritos(
 id INT PRIMARY KEY AUTO_INCREMENT,
 id_usuario INT,
 id_pelicula INT,
 fecha_guardado DATE,
 FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
 FOREIGN KEY(id_pelicula) REFERENCES peliculas(id)
);


-- DATOS INSERTADOS EN LA TABLA CATEGORIA
INSERT INTO categorias(nombre) VALUES
('Accion'),
('Comedia'),
('Drama'),
('Ciencia Ficcion'),
('Terror'),
('Animacion');


-- DATOS INSERTADOS EN LA TABLA PELICULA
INSERT INTO peliculas(titulo,anio,director,descripcion,puntuacion,id_categoria) VALUES
('El hobbit: un viaje inesperado',2012,'Peter Jackson','Aventura en la Tierra Media',9.0,4),
('El corredor del laberinto',2014,'Wes Ball','Supervivencia en un laberinto',8.5,4),
('El Se�or de los Anillos',2001,'Peter Jackson','Fantasia heroica epica',9.8,4),
('Dune',2021,'Denis Villeneuve','Conflicto en Arrakis',9.1,4),
('Spider-Man: lejos de casa',2019,'Jon Watts','Aventura de Marvel',8.6,1),
('Guardianes de la Galaxia vol. 3',2023,'James Gunn','Equipo galactico',8.9,1),
('Avengers: Infinity War',2018,'Russo Brothers','Batalla contra Thanos',9.4,1),
('La dama y el vagabundo',1955,'Disney','Clasico romantico animado',8.2,6),
('A dos metros de ti',2019,'Justin Baldoni','Drama romantico',8.5,3),
('Padre no hay mas que uno',2019,'Santiago Segura','Comedia familiar',8.0,2),
('The Hangover',2009,'Todd Phillips','Fiesta en Las Vegas',8.4,2),
('Siempre a tu lado Hachiko',2009,'Lasse Hallstrom','Historia emotiva',9.3,3),
('Deadpool',2016,'Tim Miller','Superheroe comico',8.7,1),
('Ocho apellidos vascos',2014,'Emilio Martinez-Lazaro','Comedia romantica',8.1,2),
('Bean',1997,'Mel Smith','Comedia absurda',7.8,2),
('El diario de Noa',2004,'Nick Cassavetes','Romance clasico',9.0,3),
('Ninos grandes 2',2013,'Dennis Dugan','Comedia amigos',7.9,2),
('Yo antes de ti',2016,'Thea Sharrock','Drama romantico',8.8,3),
('E.T. el extraterrestre',1982,'Steven Spielberg','Amistad extraterrestre',9.2,6),
('Un monstruo viene a verme',2016,'J.A. Bayona','Fantasia emocional',8.9,4),
('Furiosa',2024,'George Miller','Accion postapocaliptica',8.7,1),
('La carrera de la muerte',2008,'Paul Anderson','Competicion mortal',8.2,1),
('Cars',2006,'Pixar','Animacion coches',8.4,6),
('Perdona si te llamo amor',2014,'Joaquin Llamas','Romance juvenil',7.9,3),
('La ladrona de libros',2013,'Brian Percival','Drama belico',8.8,3),
('El nino con el pijama de rayas',2008,'Mark Herman','Drama guerra',9.1,3),
('Hasta el ultimo hombre',2016,'Mel Gibson','Heroe de guerra',9.3,3),
('Peaky Blinders',2013,'Steven Knight','Drama criminal',8.9,3),
('Cumbres Borrascosas',1992,'Peter Kosminsky','Romance clasico',8.4,3),
('Troya',2004,'Wolfgang Petersen','Guerra epica',9.0,1),
('Harry Potter y el caliz de fuego',2005,'Mike Newell','Magia y torneo',9.2,4),
('Harry Potter y la Orden del Fenix',2007,'David Yates','Resistencia magica',9.1,4),
('Avatar',2009,'James Cameron','Pandora y conflicto',9.4,4),
('Minions',2015,'Kyle Balda','Comedia animada',8.0,6),
('Hotel Transylvania',2012,'Genndy Tartakovsky','Monstruos divertidos',8.2,6),
('El planeta del tesoro',2002,'Disney','Aventura espacial',8.5,6),
('El planeta de los simios',2001,'Tim Burton','Evolucion y conflicto',8.4,4);


-- DATOS INSERTADOS EN LA TABLA USUARIOS
INSERT INTO usuarios (nombre,apellido,email,usuario,password,rol,fecha_registro) VALUES
('Alfredo','Ruiz','alfredo@aelix.com','alfredor','1234','admin','2026-03-01'),
('Elena','Martin','elena@aelix.com','elenam','1234','admin','2026-03-01'),
('Carlos','Lopez','carlos@email.com','carlitos','1234','normal','2026-03-04'),
('Lucia','Santos','lucia@email.com','lusan','1234','normal','2026-03-07'),
('Mario','Diaz','mario@email.com','mariod','1234','normal','2026-03-09');


-- DATOS INSERTADOS EN LA TABLA PERFILES
INSERT INTO perfiles(id_usuario,avatar,biografia) VALUES
(1,'avatar1.png','Fan del cine de ciencia ficcion'),
(2,'avatar2.png','Me encantan los thrillers'),
(3,'avatar3.png','Coleccionista de peliculas clasicas');


-- DATOS INSERTADOS EN LA TABLA FAVORITOS
INSERT INTO favoritos(id_usuario,id_pelicula,fecha_guardado) VALUES
(1,1,'2026-04-01'),
(1,2,'2026-04-01'),
(2,5,'2026-04-03'),
(3,3,'2026-04-05'),
(4,8,'2026-04-08'),
(5,7,'2026-04-10');


-- DATOS INSERTADOS EN LA TABLA AMIGOS
INSERT INTO amigos(usuario_id,amigo_id) VALUES
(1,3),
(1,4),
(2,5);