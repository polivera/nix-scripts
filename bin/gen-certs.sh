#!/usr/bin/env bash

openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:4096 > ./ca-key.pem
openssl req -new -x509 -nodes -days 365 -key ./ca-key.pem -out ./ca-cert.pem -subj "/C=AR/ST=Buenos_Aires/L=CABA/O=CaveOwl/CN=CO AU"
openssl req -newkey rsa:4096 -nodes -keyout ./server-key.pem -out ./server-req.pem -subj "/C=AR/ST=Buenos_Aires/L=CABA/O=CaveOwl/CN=nextcloud.mariadb.caveowl.com"
openssl x509 -req -in ./server-req.pem -days 365 -CA ./ca-cert.pem -CAkey ./ca-key.pem -CAcreateserial -out ./server-cert.pem
openssl req -newkey rsa:4096 -nodes -keyout ./client-key.pem -out ./client-req.pem -subj "/C=AR/ST=Buenos_Aires/L=CABA/O=CaveOwl/CN=nextcloud.caveowl.com"
openssl x509 -req -in ./client-req.pem -days 365 -CA ./ca-cert.pem -CAkey ./ca-key.pem -CAcreateserial -out ./client-cert.pem
openssl rsa -in ./server-key.pem -out ./server-key.rsa.pem