const contenido = require('../modelos/contenido');

const getAllContenidos = async (req, res, next) => {
    try {
        const allContenidos = await contenido.findAll();
        !allContenidos.length
            ? res.status(404).json({ error: "No se encontraron productos." })
            : res.status(200).json(allContenidos);
    } catch (error) {
        next(error);
    }
};

const getContenidoById = async (req, res, next) => {
    const { catalogoid } = req.params;
    try {
        const catalogo = await contenido.findByPk(catalogoid);
        !catalogo
            ? res.status(404).json({ error: "Producto no encontrado." })
            : res.status(200).json(catalogo);
    } catch (error) {
        next(error);
    }
};

module.exports = {
    getAllContenidos,
    getContenidoById,
};
