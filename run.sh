#!/bin/bash

docker stop prueba-folder 
docker rm prueba-folder

docker run --name prueba-folder -v /home/lucas/Escritorio/pruebahtml/default.conf:/etc/nginx/sites-available/default.conf -v /home/lucas/Escritorio/pruebahtml:/var/www/html -d -p 9100:80  richarvey/nginx-php-fpm
