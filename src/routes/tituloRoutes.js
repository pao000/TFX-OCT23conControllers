const express = require('express');
const router = express.Router();
const contenidoController = require('../controllers/contenidoController'); 


router.get('/:titulo', contenidoController.getContenidoByTitulo);


module.exports = router;
