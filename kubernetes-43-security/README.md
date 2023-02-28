## Roles de Namespace
# Crear un nuevo namespace
kubectl create namespace ventas

# Visualizar los namespaces
kubectl get namespaces

# Visualzar los roles del namespace default
kubectl get roles -n default

# Visualzar los roles del namespace kube-system
kubectl get roles -n kube-system

# Describir un rol
kubectl describe role kube-proxy -n kube-system

# Crear un rol
kubectl apply -f role.yaml

# Describir el rol creado
kubectl describe role operator -n ventas

## Roles de Cluster
# Visualizar los clusterroles
kubectl get clusterroles

# Describir un clusterrole
kubectl describe clusterrole system:node

# Crear un clusterrole
kubectl apply -f clusterrole.yaml

# Describir el clusterrole creado
kubectl describe clusterrole desarrollo

## Autenticación
# Crear Certificado de Acceso
openssl genrsa -out desa1.key 4096
openssl req -config desa1.crs.cnf -new -key desa1.key -out desa1.crf

# Copiar el contenido de solicitud.txt y pegarlo en consola

# Aprovar certificado 
kubectl certificate approve desa-req-auth

# Descargar certificado
kubectl get csr desa-req-auth -o jsonpath='{.status.certificate}' | base64 --decode > desa.crt
kubectl get csr desa-req-auth -o jsonpath='{.spec.request}' | base64 --decode > desa.test.crt
