const express = require('express');
const router = express.Router();

const {
    getAllContenidos,
    getContenidoById,
} = require('../controllers/contenidoController'); 

router.get('/', getAllContenidos);
router.get('/:catalogoid', getContenidoById);

module.exports = router;
