if [ ! -d "$1" ]; then
  mkdir ./$1
fi

./san.sh $1 > ./$1/$1.ext

# Create Private Key
openssl genrsa -out ./$1/private.key 2048

# create Certificat Signing Request (CSR)
openssl req -new -key ./$1/private.key -out ./$1/signature.csr

# https://stackoverflow.com/questions/43665243/invalid-self-signed-ssl-cert-subject-alternative-name-missing/43665244#43665244
# The config file is needed to define the Subject Alternative Name (SAN) extension
# Create Cert
openssl \
  x509 \
  -req \
  -in ./$1/signature.csr \
  -CA myCA.pem \
  -CAkey myCA.key \
  -CAcreateserial \
  -out ./$1/certificat.crt \
  -days 1825 \
  -sha256 \
  -extfile ./$1/$1.ext
