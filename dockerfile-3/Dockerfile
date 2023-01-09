FROM ubuntu:22.04
LABEL "Creador"="Alexis Montenegro amontenegro.sistemas@gmail.com"

##Actualizamos
RUN apt-get update

##Instalamos WGET para el repositorio
RUN apt-get install wget -y

##Instalamos lsb-release para conocer la relesase del ubuntu
RUN apt-get install lsb-release -y

##Instalamos gpg2 para descargar la clave GPG
RUN apt-get install gnupg2 -y

##Instalamos tzdata, porque Ubuntu ahora la pide de forma interactiva 
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install tzdata -y

##Configuramos el repositorio
RUN echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list

## Descargamos la clave
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc|apt-key add -

##Actualizamos el sistema
RUN apt-get update

##Instalamos Postgres
RUN apt-get -y install postgresql-12

##Permitimos que se puede acceder a PostgreSQL
##desde clientes remotos
RUN echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/12/main/pg_hba.conf

##Permitimos que se pueda acceder por cualquier IP que tenga el contenedor
RUN echo "listen_addresses='*'" >> /etc/postgresql/12/main/postgresql.conf

##Exponemos el Puerto de la Base de Datos
EXPOSE 5432

##Creamos un directorio en /var/run y le damos permisos para el usuario postgres
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql

##Creamos los volúmenes necesarios para guardar el backup de la configuración, logs y bases de datos y poder acceder desde fuera del contenedor
VOLUME ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]

##Copiamos el fichero entrypoint.sh y le ponemos permisos
ADD entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

##Nos cambiamos al usuario postgres
USER postgres

##Creamos 3 variables para crear el usuario,
##la password y la base de datos
ENV PASS=secret
ENV BBDD=pgdb
ENV USER=pguser


##Ejecutamos el script entrypoint.sh
CMD /usr/local/bin/entrypoint.sh




