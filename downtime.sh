#!/bin/bash -x

# Fjerne floating IP fra balancer over til downtime
openstack floating ip unset --port 10.212.170.126

# Henter ut port IDen til downtime og lagrer det i en variabel
PORT_ID=$(openstack port list --server 024245b0-4ff9-48e6-a4db-c7d1c8fc287e | awk 'NR==4 {print $2}')

# Assosierer floating IP med en ny server port til downtime
openstack floating ip set --port $PORT_ID
