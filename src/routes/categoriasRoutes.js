const express = require('express');
const router = express.Router();

const {
    getAllCategorias,
} = require('../controllers/categoriasController'); 

router.get('/', getAllCategorias);

module.exports = router;
