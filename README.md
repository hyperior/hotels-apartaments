# hotels-apartaments APP
## Introducción
aplicacion para busqueda de hospedajes (Hoteles y Apartamentos) en españa 

## Tecnología
Aplicacion realizada en PHP bajo estandar PSR-2 con pruebas unitarias con PHPUnit

## Instalación
Para instalacion del proyecto necesitaras de composer y ejecutar el siguiente comando

  - composer install

el .sql de la base de datos se encuentra en la carpeta src/databases

## Ejecución
luego de instalada la aplicacion podras usarla con el siguiente comando 

  - php main.php search faro

el comando php ejecutara el archivo main del proyecto, debes enviar dos agurmentos para obtener los resultados el primero es el "search" que le indica al sistema que deseas buscar una palabra clave, el segundo argumento es la palabra que deseas buscar

## Pruebas
Para realizar la corrida de pruebas se agrego un script en composer, ejecutar el siguiente comando

  - composer run-script test
