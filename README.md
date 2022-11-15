# API RESTful de celulares
***
Una API REST sencilla para manejar un CRUD de celulares, los cuales pueden ser filtrados por categoria y ordenados por algunos de sus campos de manera ascendente o descendente.

## Requerimientos
* Importar desde PHPMyAdmin (o cualquiera otra) la base de datos database/db_celulares.sql

## :hammer: Funcionalidades del proyecto

### GET
#### Obtener un celular especifico
* http://localhost/web2/API-REST/api/celulares/:ID
* Ejemplo: http://localhost/web2/API-REST/api/celulares/2 se obtiene el celular con id=2

#### Obtener colección completa de celulares:
* http://localhost/web2/API-REST/api/celulares

#### Filtrar por categoria: marca
* http://localhost/web2/API-REST/api/celulares?id_marca=num

#### Ordenar por campo 
* En esta API es posible ordenar por id_celular, modelo, precio e id_marca de manera ascendente o descendente, de la siguiente forma:
http://localhost/web2/API-REST/api/celulares?sort=campoAOrdenar&order=asc/desc

* Ejemplo: 
http://localhost/web2/API-REST/api/celulares?sort=precio&order=asc

#### Paginado
* Hacemos uso de los parámetros: limit y offset. Limit para declarar el número máximo de registros a retornar y offset indica el número del primer registro a retornar. El número de registro inicial es 0 (no 1).

* Ejemplo:
http://localhost/web2/API-REST/api/celulares?limit=6&offset=0 -> va del celular con id=1 hasta el de id=6
http://localhost/web2/API-REST/api/celulares?limit=6&offset=6 -> va del celular con id=7 hasta el de id=12

#### Uso mixto de varias funcionalidades
* Tambien es posible hacer uso de varias o todas las funcionalidades a la vez.
* Ejemplo: http://localhost/web2/API-REST/api/celulares?id_marca=1&sort=precio&order=asc&limit=4&offset=0

### DELETE
* Con el method:DELETE eliminamos el celular deseado con su correspondiente id: 
* DELETE/celulares/:ID

### POST
* Con el method:POST agregamos un celular nuevo: 
* POST/celulares

{
    "modelo": "Modelo",
    "precio": precio,
    "descripcion": "Descripcion",
    "id_marca": #,
    "Imagen": "url"
}

###### Aclaracion:
* id_marca
1. 1: Samsung
2. 2: Apple
3. 3: Motorola
4. 4: Xiaomi
5. 5: LG
6. 6: Xiaomi

### PUT
* Con el method:PUT actualizamos/editamos el celular deseado con su correspondiente id: 
* PUT/celulares/:ID

{
    "modelo": "Modelo actualizado",
    "precio": precio actualizado,
    "descripcion": "Descripcion actualizada",
    "id_marca": #,
    "Imagen": "url actualizada"
}

### Pueba con postman el endpoint de la API es: http://localhost/tucarpetalocal/API-REST/api/celulares