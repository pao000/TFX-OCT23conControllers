const generos = require('../modelos/generos');

const getGeneroByNombre = async (req, res, next) => {
    const { genero } = req.params;
    try {
        const generoEncontrado = await generos.findOne({ where: { genero } });
        !generoEncontrado
            ? res.status(404).json({ error: "Género no encontrado." })
            : res.status(200).json(generoEncontrado);
    } catch (error) {
        next(error);
    }
};

module.exports = {
    getGeneroByNombre,
};
