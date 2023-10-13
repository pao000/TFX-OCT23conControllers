const contenido = require('../modelos/contenido');
const { Op } = require('sequelize');


// const getAllContenidos = async (req, res, next) => {
//     try {
//         const allContenidos = await contenido.findAll();
//         !allContenidos.length
//             ? res.status(404).json({ error: "No se encontraron productos." })
//             : res.status(200).json(allContenidos);
//     } catch (error) {
//         next(error);
//     }
// };


const getAllContenidos = async (req, res, next) => {
    try {
        const allContenidos = await contenido.findAll();
        if (!allContenidos.length) {
            res.status(404).json({ error: "No se encontraron productos." });
            return;
        }

        // Construir la URL absoluta de la imagen basada en la URL de la solicitud
        const absolutePosterPaths = allContenidos.map((item) => {
            return {
                ...item.toJSON(),
                poster: `${req.protocol}://${req.get('host')}/${item.poster}`, // Reemplaza 'poster' con el nombre del campo real en tu modelo
            };
        });

        res.status(200).json(absolutePosterPaths);
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

// contenidoController.js

const getContenidoByTitulo = async (req, res, next) => {
    try {
        const { titulo } = req.params;
        const catalogo = await contenido.findAll({
            where: {
                titulo: {
                    [Op.like]: `%${titulo}%`
                }
            },
        });

        !catalogo.length
            ? res.status(404).json({ error: "No se encontraron productos." })
            : res.status(200).json(catalogo);
    } catch (error) {
        next(error);
    }
};



const getContenidoByTemporada = async (req, res, next) => {
    try {
        const { temporada } = req.params;

        const catalogo = await contenido.findAll({
            where: {
                temporadas: temporada, // Filtra por la temporada proporcionada en la URL
            },
        });

        if (!catalogo || catalogo.length === 0) {
            res.status(404).json({ error: "No se encontraron contenidos para esta temporada." });
        } else {
            res.status(200).json(catalogo);
        }
    } catch (error) {
        next(error);
    }
};




module.exports = {
    getAllContenidos,
    getContenidoById,
    getContenidoByTitulo,
    getContenidoByTemporada,
};
