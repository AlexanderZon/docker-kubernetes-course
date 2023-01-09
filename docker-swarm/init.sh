# Join to Cluster (Add worker to local Swarm)
docker swarm join --token SWMTKN-1-54ml093uushoi6r4baqh6o6nzbddzjrm8uks28cwimm3ag806z-34tk6ksaz0tw8s1y4ymptn628 127.0.0.1:2377

# Add manager to swarm
docker swarm join-token manager