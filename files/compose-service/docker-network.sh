#!/bin/bash

# A rede Docker é passada como primeiro argumento
network=$1

# Lista de containers para conectar à rede
containers=("grafana" "prometheus" "nginx") 

# Conectar cada container à rede
for container in "${containers[@]}"; do
  echo "Conectando $container à rede $network..."
  docker network connect "$network" "$container"
done

echo "Todos os containers foram conectados à rede $network."