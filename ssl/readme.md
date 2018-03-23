# Have SSL on local environement
## If you are working on a non-UNIX env

1. install Docker
2. lauch unix.sh

## Create root CA
If ou don't have created a local root certifation authority yet, lauch the following lines.

1. Lauch root-ca.sh to create Root CA (follow steps)
2. Save generated certificat on your host system

## Create a new certificate for your domain

1. Lauch cert.sh to create certificate for each domain i.e : 
```bash
  $ cert.sh your.domain.dev
```
2. Put generated folder ./your.domain.dev in nginx/ssl folder ans link .key .crt in your nginx ssl config

## Before testing

1. Add your domain on local dns (host) file in your system like : 
```host
  127.0.0.1 your.domain.dev localhost
```
