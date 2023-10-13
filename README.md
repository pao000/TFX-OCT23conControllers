
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






