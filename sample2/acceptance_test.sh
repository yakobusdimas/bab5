#!/bin/bash
IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' calculator)
test $(curl $IP:8080/sum?a=1\&b=2) -eq 3
