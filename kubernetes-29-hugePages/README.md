# Abrir el archivo de visualización de la memoria del sistema operativo
cat /proc/meminfo

# Ver propiodades del sistema relacionadas con la funcionalidad de hugepages
sudo sysctl -a | grep huge

# Editar el archivo de configuración de las propiedades del sistema
sudo nano /etc/sysctl.conf

# Ir al final der archivo y colocar la siguiente propiedad
vm.nr_hugepages=100

# Actualizar las propiedades del sistema
sudo sysctl -p

# Abrir el archivo de visualización de la memoria del sistema operativo para verificar los cambios
cat /proc/meminfo