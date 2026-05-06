/**************************************************************/
/* Módulo profesional: Lenguajes de Marcas y Sistemas de      */
/* Gestión de Información                                     */
/* Unidad didáctica 05: JSON y los SGBD                       */
/* Proyecto Aelix Stream - Conexión frontend y backend        */
/**************************************************************/


// ------------------------------
// CONSTANTES NECESARIAS
// ------------------------------

// Puerto donde se ejecuta nuestro servidor
const PORT = 3000;

// URL principal de nuestro backend
const ENDPOINT_SERVER = "http://localhost:" + PORT;


// Endpoint para obtener todas las películas
const ENDPOINT_OBTENER_PELICULAS = "/peliculas";


// Esperamos a que cargue todo el HTML antes de ejecutar el JS
document.addEventListener("DOMContentLoaded", () => {

    // Guardamos el contenedor donde mostraremos las películas
    const contenedorPeliculas = document.getElementById("peliculas");


    // Llamamos a la función para cargar las películas
    obtenerPeliculas();


    // ------------------------------
    // FUNCIÓN PARA OBTENER PELÍCULAS
    // ------------------------------

    function obtenerPeliculas() {

        // Hacemos una petición a nuestra API
        fetch(ENDPOINT_SERVER + ENDPOINT_OBTENER_PELICULAS)

        // Convertimos la respuesta a JSON
        .then(res => res.json())

        // Trabajamos con los datos recibidos
        .then(data => {

            console.log(data);

            // Limpiamos el contenedor antes de mostrar datos
            contenedorPeliculas.innerHTML = "";

            // Recorremos todas las películas
            data.forEach(pelicula => {

                // Añadimos cada película al HTML
                contenedorPeliculas.innerHTML += `

                    <div class="pelicula">

                        <h2>${pelicula.titulo}</h2>

                        <p><strong>Año:</strong> ${pelicula.anio}</p>

                        <p><strong>Director:</strong> ${pelicula.director}</p>

                        <p><strong>Puntuación:</strong> ${pelicula.puntuacion}</p>

                    </div>

                `;

            });

        })

        // Mostramos errores por consola si algo falla
        .catch(error => {

            console.log("Error obteniendo películas");
            console.log(error);

        });

    }

});