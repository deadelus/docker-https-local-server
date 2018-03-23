FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf

RUN apk update && \
    apk add --no-cache bash && \
    apk add openssl

RUN mkdir /etc/nginx/sites-available

RUN mkdir /etc/nginx/sites-enabled

RUN mkdir /var/www

RUN mkdir /etc/nginx/ssl