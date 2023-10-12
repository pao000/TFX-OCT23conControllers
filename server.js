const express = require('express');
const app = express();
const contenido = require('./src/modelos/contenido');
const sequelize = require('./src/conexion/connection');
const { DataTypes, Sequelize, Op } = require('sequelize');

const {
    getAllCategorias,
} = require('./src/controllers/categoriasController');

const {
    getAllContenidos,
    getContenidoById,
} = require('./src/controllers/contenidoController');

const {
    getGeneroByNombre,
} = require('./src/controllers/generosController');

app.use(express.json());

app.use(async (req, res, next) => {
    try {
        await sequelize.authenticate();
        next();
    } catch (error) {
        next(error);
    }
});

app.get('/categorias', getAllCategorias);

app.get('/catalogo', getAllContenidos);
app.get('/catalogo/:catalogoid', getContenidoById);
app.get('/catalogo/genero/:genero', getGeneroByNombre);



app.get('/catalogo/titulo/:titulo', async (req, res, next) => {
    try {
        const { titulo } = req.params;
        const catalogo = await contenido.findAll({
            where: {
                titulo: {
                    [Sequelize.Op.like]: `%${titulo}%`
                }
            }
        });

        !catalogo.length
            ? res.status(404).json({ error: "No se encontraron productos." })
            : res.status(200).json(catalogo);
    } catch (error) {
        next(error);
    }
});


// Manejo de errores centralizado
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).json({ error: "Error interno del servidor", description: err.message });
});


app.get('/', (req, res) => {
    res.status(200).json({ message: "¡Bienvenido a la API de Trailerflix!" });
});

app.listen(3000, () => {
    console.log("Aplicación ejemplo, escuchando el puerto 3000!");
});
