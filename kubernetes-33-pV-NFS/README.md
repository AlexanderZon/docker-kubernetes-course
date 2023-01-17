# --------------
# /  Maestro   /
# --------------

# Necesistamos ser root
sudo su

# Instalar el paquete nfs-kernel-server
apt-get install nfs-kernel-server -y

# Crear el directorio donde se van a compartir todos los ficheros
mkdir /var/datos

# Editar el fichero /etc/exports
nano /etc/exports

# Al final del archivo indicamos las características que necesitamos en el fichero
/var/datos *(rw,sync,no_root_squash,no_all_squash)

# Reiniciamos el servicio
systemctl restart nfs-kernel-server

# Verificamos que está funcionando el mount
showmount -e IP_MAESTRO

# --------------
# /  Esclavos  /

# --------------
# Necesistamos ser root
sudo su

# Instalar el paquete nfs-common
apt-get install nfs-common -y

# Ver el mount del maestro
showmount -e IP_MAESTRO

# Crear un directorio en el esclavo para accesar a los datos compartidos
mkdir /var/datos

# Montar el directorio como acceso para el servidor NFS del maestro
mount -t nfs IP_MAESTRO:/var/datos /var/datos