##Descargamos una versión concreta de UBUNTU, a través del tag
FROM ubuntu:22.04
MAINTAINER Alexis Montenegro "amontenegro.sistemas@gmail.com"

##Actualizamos el sistema
RUN apt-get update

##Intalamos nginx
RUN apt-get install nginx -y

##Creamos un fichero index.html en el directorio por defecto de nginx
# RUN echo 'Mi primer Dockerfile' > /var/www/html/index.html
ARG webpage
ADD $webpage /var/www/html/
VOLUME /var/www/html/

##Arrancamos NGINX a través de ENTRYPOINT para que no pueda ser
##modificar en la creación del contenedor
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

##Exponemos el Puerto 80
EXPOSE 80

