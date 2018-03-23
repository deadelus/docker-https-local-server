 # BECOMING A (TINY) CERTIFICATE AUTHORITY
openssl genrsa -des3 -out myCA.key 2048

# Gen Root Cert
openssl req -x509 -new -nodes -key myCA.key -sha256 -days 1825 -out myCA.pem
