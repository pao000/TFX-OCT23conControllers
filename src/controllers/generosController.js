const { Op } = require('sequelize');
const Genero = require('../modelos/generos');

const getGeneroByNombre = async (req, res, next) => {
    const { genero } = req.params;
    try {
        const generosEncontrados = await Genero.findAll({
            where: {
                genero: {
                    [Op.like]: `%${genero}%` 
                }
            }
        });

        if (generosEncontrados.length === 0) {
            res.status(404).json({ error: "Género no encontrado." });
        } else {
            res.status(200).json(generosEncontrados);
        }
    } catch (error) {
        next(error);
    }
};

module.exports = {
    getGeneroByNombre,
};
