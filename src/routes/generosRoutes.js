const express = require('express');
const router = express.Router();

const {
    getGeneroByNombre,
} = require('../controllers/generosController'); 

router.get('/:genero', getGeneroByNombre);

module.exports = router;
