## Planificación del proyecto (Primera Entrega)

1) Título del proyecto : AELIX Stream.
2) Nombre y apellidos de todos los integrantes del grupo : Alfredo y Elena. 

3) Descripción detallada de la idea del proyecto:
AELIX Stream es una plataforma web inspirada en Netflix que hemos diseñado para que los usuarios puedan buscar y guardar sus películas favoritas de una forma sencilla y también compartir gustos con sus amigos. La aplicación contará con un buscador de películas, 
diferentes categorías para encontrarlas más fácilmente y un apartado de películas aleatorias para descubrir nuevo contenido. Además, cada usuario tendrá su propia lista personal donde podrá guardar las películas que más le gusten, y también habrá una sección en 
la que se mostrarán todas las películas que sus amigos hayan marcado como favoritas, para así conocer nuevos gustos y recomendaciones. También tendrá una página dedicada a los perfiles de usuario, donde se podrán ver, editar y eliminar, y otra página final en la 
que hablaremos sobre nosotros y explicaremos quiénes somos y en qué consiste el proyecto. La idea es crear una plataforma sencilla, visual y fácil de usar, centrada únicamente en películas y en compartir gustos entre amigos.


4) Objetivos que se pretenden alcanzar:
Nuestro objetivo en este proyecto es crear una plataforma web sobre un tema que nos gusta mucho, que en este caso son las películas, para así poder aplicar todo lo que hemos aprendido en clase de una forma más práctica. Hemos querido hacer AELIX Stream porque nos parece una idea interesante y que nos motiva, 
y creemos que es una buena forma de poner en práctica conocimientos de HTML, CSS, JavaScript, bases de datos y JSON. Además, también queremos aprovechar este proyecto para ver si somos capaces de desarrollar nuestra propia API, conectando la página web con la base de datos y gestionando toda la información 
desde el backend. En general, nuestro objetivo es demostrar que podemos unir todos los contenidos que hemos ido aprendiendo durante el curso en una aplicación completa, funcional y relacionada con un tema que nos gusta.


5) Funcionalidades principales previstas:
Tenemos pensado, que las funcionalidades principales sean las siguientes: 
- Buscador. Donde el usuario pueda buscar cualquier película.
- Categorías. Películas estén organizadas por géneros como acción, comedia, 
- Películas. Donde ecomendemos contenido nuevo al usuario cuando no sepa qué ver.
- Feed Amigos. Aquí el usuario podrá ver que peliculas tienen sus amigos guardadas en me gustas. 
- Página de perfiles. Donde se editen o eliminen perfiles.
- Página de nosotros. Explicaremos quiénes somos, por qué hemos elegido esta idea y en qué consiste el proyecto.


6) Descripción general del tipo de usuarios (si procede).
La aplicación tendrá principalmente dos tipos de usuarios:
Nosotros vamos a desarrollar principalmente el usuario de administrador, el usuario normal sería igual, solo que no puede borrar los demás perfiles. 

Usuario normal
Puede:
- Editar su perfil.
- Salir de su perfil.

Administrador Puede:
- Gestionar usuarios: Añadir o eliminar.
- Editar perfil.


7) Estructura inicial prevista de la aplicación (breve explicación del frontend, backend y base de datos).
Nuestra aplicación estará dividida en tres partes principales: frontend, backend y base de datos:
- El frontend será la parte visual, será lo que verá el usuario cuando entre en Aelix Stream. Aquí estarán todas las páginas de la plataforma, como el buscador de películas, 
las categorías, la lista de favoritos, los perfiles y la página sobre nosotros. Esta parte la haremos con HTML, CSS y JavaScript, y también será la encargada de mostrar la información que venga desde la API.
- El backend será la parte que gestione el funcionamiento interno de la aplicación. Aquí queremos crear nuestra propia API con Node.js y Express, para conectar el frontend con la base de datos y gestionar acciones 
como buscar películas, guardar favoritos, mostrar perfiles o editar y eliminar usuarios.
- La base de datos, que haremos con MySQL, servirá para almacenar toda la información del proyecto, como los usuarios, las películas, las listas de favoritos y los datos relacionados con los perfiles. 
Desde el backend haremos las consultas necesarias para obtener o modificar esos datos.


8) La descripción debe ser lo suficientemente clara y concreta como para entender qué problema resuelve la aplicación y cómo se va a desarrollar técnicamente:
Con Aelix Stream queremos resolver el problema de tener que buscar películas en muchos sitios o no saber qué ver cuando quieres descubrir algo nuevo o ver recomendaciones de amigos. También queremos facilitar que los usuarios puedan guardar sus películas favoritas en un mismo sitio y compartir gustos con otras personas viendo las películas que sus amigos tienen en favoritos.

Técnicamente, el proyecto se va a desarrollar como una aplicación web dividida en frontend, backend y base de datos. En el frontend usaremos HTML, CSS y JavaScript para crear la parte visual de la página, con sus diferentes apartados como el buscador, categorías, perfiles y favoritos. En el backend desarrollaremos una API con Node.js, que se encargará de conectar la página con la base de datos y gestionar las peticiones para consultar, añadir, editar o eliminar información. Para almacenar todos los datos usaremos MySQL, donde guardaremos usuarios, películas y listas de favoritos. Toda esta información se intercambiará en formato JSON, aplicando así los contenidos que se piden en el proyecto.


## Control de cambios (Segunda Entrega)

### Añadido
- Hemos conectado Node.js con MySQL para poder trabajar con datos reales desde la base de datos.
- Hemos creado el endpoint GET `/peliculas` para mostrar todas las películas guardadas.
- Hemos añadido el archivo `server.js`, donde estamos desarrollando el backend y la conexión con la base de datos.
- Hemos creado el archivo `javascript.js` para hacer las peticiones fetch desde el frontend.
- Ahora las películas se muestran directamente en pantalla desde la base de datos.
- La base de datos prácticamente la dejamos lista desde la primera entrega, aunque no descartamos hacer algún cambio más adelante si el proyecto lo necesita.

### Modificado
- Hemos reorganizado la estructura del proyecto separando frontend y backend, siguiendo la forma de trabajar que hemos visto en clase.
- También hemos organizado las películas por categorías para que quede todo más ordenado.
- Luego hemos configurado el servidor para que también pueda mostrar los archivos del frontend.

### Eliminado
-   De momento no hemos eliminado nada.

### Justificación de los cambios realizados
Hemos hecho estos cambios para empezar a desarrollar una primera versión funcional real de Aelix Stream y conseguir conectar todas las partes del proyecto. Nuestro objetivo en esta entrega ha sido que el frontend, el backend y la base de datos funcionen juntos correctamente. Hemos usado Node.js, MySQL, JSON y fetch, para que la página pueda obtener información real desde la base de datos y mostrarla dinámicamente en pantalla.
