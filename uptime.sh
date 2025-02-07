#!/bin/bash -x

# Fjerne floating IP fra balancer over til downtime
openstack floating ip unset --port 10.212.170.126

# Henter ut port IDen til downtime og lagrer det i en variabel
PORT_ID=$(openstack port list --server 9585e143-37fa-4d78-899e-9dfe6ad68165 | awk 'NR==4 {print $2}')

# Assosierer floating IP med en ny server port til downtime
openstack floating ip set --port $PORT_ID
