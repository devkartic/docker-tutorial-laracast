# Pull Docker Hub Image
FROM nginx:stable-alpine

# Create User Group & User
ENV NGINXUSER=laravel
ENV NGINXGROUP=laravel

# Create Project Directory In Container
RUN mkdir -p /var/www/html/public

# Create Custom Conf & ADD Into The Container
ADD nginx/default.conf /etc/nginx/conf.d/default.conf

RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf

RUN adduser -g ${NGINXGROUP} -s /bin/sh -D ${NGINXUSER}