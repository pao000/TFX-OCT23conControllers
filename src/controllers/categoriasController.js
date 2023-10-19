const categorias = require('../modelos/categorias');

const getAllCategorias = async (req, res, next) => {
    try {
        const allCategorias = await categorias.findAll();
        !allCategorias.length
            ? res.status(404).json({ error: "No se encontraron categorías." })
            : res.status(200).json(allCategorias);
    } catch (error) {
        next(error);
    }
};

module.exports = {
    getAllCategorias,
};
