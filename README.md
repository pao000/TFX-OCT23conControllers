
# API de Trailerflix

La API de Trailerflix proporciona acceso a información sobre películas, series y documentales. Puedes buscar contenido por título, categoría, género, temporada y más.

## Uso de la API

# API de Trailerflix


| Función                  | Ruta                                 | Método | Ejemplo de Solicitud                          |
|--------------------------|-------------------------------------|--------|----------------------------------------------|
| Listado de Categorías    | `/categorias`                        | GET    | `GET /categorias`                            |
| Listado de Contenido     | `/catalogo`                          | GET    | `GET /catalogo`                              |
| Detalles del Contenido   | `/catalogo/{catalogoid}`             | GET    | `GET /catalogo/1`                            |
| Búsqueda por Género      | `/catalogo/genero/{genero}`          | GET    | `GET /catalogo/genero/acción`                |
| Búsqueda por Título      | `/catalogo/titulo/{titulo}`          | GET    | `GET /catalogo/titulo/Pelicula%201`         |
| Búsqueda por Temporada   | `/catalogo/temporada/{temporada}`    | GET    | `GET /catalogo/temporada/1`                  |

## Configuración del Proyecto

Asegúrate de configurar el proyecto con las dependencias necesarias y de definir las variables de entorno para la conexión a la base de datos. Puedes encontrar el código fuente en los archivos proporcionados.

## Contribuciones

¡Si deseas contribuir a este proyecto, no dudes en hacerlo! Abre un problema o una solicitud de extracción y estaremos encantados de revisarlo.
