# Listar addons de minikube
minikube addons list

# Listar addons de minikube de un cluster específico
minikube addons -p minikube list 

# Activar el addon metrics-server en un cluster específico
minikube addons enable metrics-server -p minikube 

# Ver las metricas de un pod
kubectl top pod ejemplo