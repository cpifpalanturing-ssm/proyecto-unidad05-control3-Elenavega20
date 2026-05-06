/*
    En este archivo desarrollamos el backend principal de nuestro proyecto Aelix Stream.
    Aquí nos encargamos de crear el servidor con Node.js y Express, conectar nuestra
    aplicación con la base de datos MySQL y crear las rutas de la API para poder obtener
    información de las películas. También utilizamos JSON para enviar los datos al frontend
    y conseguir que la página pueda mostrar la información de forma dinámica.
*/

// Importamos los módulos necesarios para nuestro proyecto
const express = require("express"); // Framework para crear el servidor
const mysql = require("mysql2"); // Cliente para conectarnos a MySQL
const cors = require("cors"); // Permite conectar frontend y backend
const path = require("path"); // Nos ayuda a trabajar con rutas de carpetas

// Creamos nuestra aplicación con Express
const app = express();

// Habilitamos el uso de JSON y CORS
app.use(cors());
app.use(express.json());

// Hacemos que Express pueda mostrar nuestro frontend desde src/
app.use(express.static(path.join(__dirname, "../src")));

// Definimos el puerto donde se ejecutará el servidor
const PORT = 3000;


// CONFIGURACIÓN DE LA CONEXIÓN MYSQL
const conexion = mysql.createConnection({

    host: "localhost", // Dirección del servidor MySQL
    user: "aelix", // Usuario de MySQL
    password: "aelix2026", // Contraseña de MySQL
    database: "aelix_stream" // Nombre de nuestra base de datos

});


// COMPROBAMOS LA CONEXIÓN CON MYSQL
conexion.connect((error) => {

    if(error){

        console.log("Error conectando con MySQL");
        console.log(error);

    } else {

        console.log("Conexión correcta con MySQL");

    }

});


// ------------------------------
// RUTAS GET
// ------------------------------


// GET → Obtener todas las películas
app.get("/peliculas", (req,res) => {

    // Consulta SQL
    const sql = "SELECT * FROM peliculas";

    // Ejecutamos la consulta
    conexion.query(sql, (error,resultados) => {

        // Si hay error devolvemos mensaje
        if(error){

            res.status(500).json(error);

        } else {

            // Si todo funciona devolvemos resultados en JSON
            res.json(resultados);

        }

    });

});


// ------------------------------
// INICIAMOS EL SERVIDOR
// ------------------------------

app.listen(PORT, () => {

    console.log(`Servidor funcionando en http://localhost:${PORT}`);

});