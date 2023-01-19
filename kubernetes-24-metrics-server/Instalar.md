# Instalar metrics-server
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

# Ver todos los namespaces
kubectl get ns

# Ver los servicios del namespace kube-system
kubectl get svc -n kube-system

# Ver los deploys del namespace kube-system
kubectl get deploy -n kube-system

# Ver los pods del namesace kube-system
kubectl get pod -n kube-system

# Ver el pod de metrics-server
kubectl get pod -n kube-system metrics-server-HASH-ID

# Describir el pod de metrics-server 
kubectl describe pod -n kube-system metrics-server-HASH-ID

# Colocar en modo inseguro el metrics server
# Descargar el fichero yaml de instalación de metrics-server
wget https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

# Editar el fichero descargado
nano components.yaml

# Buscar por la declaración del Deployment en la sección de "Argumentos" (args)
# Agregar el argumento --kubelet-insecure-tls
# En el argumento --kubelet-preferred-address-types agregar los elementos InternalDNS e ExternalDNS
# Es recomendable subir el valor del argumento --metrics-resolution a por lo menos 30s

# Colocar una opción en la sección container del deployment llamada hostNetwork: true

# Eliminar el deploy de metrics-server
kubectl delete deploy metrics-server -n kube-system

# Aplicar Alteraciones 
kubectl apply -f components.yaml