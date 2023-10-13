const express = require('express');
const router = express.Router();
const contenidoController = require('../controllers/contenidoController'); // Importa el controlador necesario

// Define la ruta para buscar contenido por título
router.get('/:titulo', contenidoController.getContenidoByTitulo);

// Exporta el enrutador
module.exports = router;
