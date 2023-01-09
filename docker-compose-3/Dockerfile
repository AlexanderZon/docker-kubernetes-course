# Descargamos la imagen docker de ubuntu
FROM ubuntu
# Actualizamos el sistema operativo
RUN apt-get update
# Instalamos Nginx
RUN apt-get install nginx -y
# Copiamos la carpeta web para el directorio raiz del apache
ADD web /var/www/html
# Ejecutamos el servidor Nginx a traves de ENTRYPOINT para que no pueda ser modificado en la creacion del contenedor
ENTRYPOINT ["usr/sbin/nginx", "-g", "daemon off;"]
# Exponemos el puerto 80
EXPOSE 80