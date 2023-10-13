const express = require('express');
const app = express();
const contenido = require('./src/modelos/contenido');
const sequelize = require('./src/conexion/connection');
const contenidoController = require('./src/controllers/contenidoController');
const contenidoRoutes = require('./src/routes/contenidoRoutes');

app.use('/contenido', contenidoRoutes);

app.use('/poster', express.static('public/poster'));


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
app.get('/catalogo/titulo/:titulo', contenidoController.getContenidoByTitulo);
app.get('/catalogo/temporada/:temporada', contenidoController.getContenidoByTemporada);


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
