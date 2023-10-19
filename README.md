
# API de Trailerflix
## Uso de la API


### Gettin Started

Para acceder a la base de datos usá la siguiente URL:

http://localhost:3000/

La API de Trailerflix proporciona acceso a información sobre películas, series y documentales. Puedes buscar contenido por título, categoría, género, temporada y más.

## Listado de Contenido
Lista de todo el contenido disponible. También incluye rutas absolutas para los pósters.

## Endpoints

| Función                  | Ruta                                 | Método | Ejemplo de Solicitud                          |
|--------------------------|-------------------------------------|--------|----------------------------------------------|
| Listado de Categorías    | `/categorias`                        | GET    | `GET /categorias`                            |
| Listado de Contenido     | `/catalogo`                          | GET    | `GET /catalogo`                              |
| Detalles del Contenido   | `/catalogo/{catalogoid}`             | GET    | `GET /catalogo/1`                            |
| Búsqueda por Género      | `/catalogo/genero/{genero}`          | GET    | `GET /catalogo/genero/acción`                |
| Búsqueda por Título      | `/catalogo/titulo/{titulo}`          | GET    | `GET /catalogo/titulo/Pelicula%201`         |
| Búsqueda por Temporada   | `/catalogo/temporada/{temporada}`    | GET    | `GET /catalogo/temporada/1`                  |
| Ver Póster de Contenido  | `/poster/{catalogoid}`               | GET    | `GET /poster/1.jpg`                              |







