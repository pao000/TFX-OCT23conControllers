const express = require('express');
const router = express.Router();
const contenidoController = require('../controllers/contenidoController');

const {
    getAllContenidos,
    getContenidoById,
} = require('../controllers/contenidoController');

router.get('/temporada/:temporada', contenidoController.getContenidoByTemporada);
router.get('/:titulo', contenidoController.getContenidoByTitulo);
router.get('/', contenidoController.getAllContenidos);
router.get('/:catalogoid', contenidoController.getContenidoById);


module.exports = router;
