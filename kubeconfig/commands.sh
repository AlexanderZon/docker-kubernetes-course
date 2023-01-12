# Trocar contexto
kubectl config use-context cluster1

# Crear cluster en archivo de configuracion apartado
kubectl config set-cluster cluster2  --kubeconfig=kubeconfig.yaml --server=https://1.2.3.4

# Seleccionar archivo de certificado para el cluster
kubectl config set-cluster cluster2 --kubeconfig=kubeconfig.yaml --certificate-authority=ca.crt