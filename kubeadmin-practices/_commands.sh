# Agregar una label a un nodo
kubectl label node NODE_NAME LABEL_KEY=LABEL_VALUE

# Agrega un taint (tachado) a un nodo
kubectl taint nodes CLUSTER_NAME TAINT_KEY=TAINT_VALUE:[NoSchedule, PreferNoSchedule, NoExecute]