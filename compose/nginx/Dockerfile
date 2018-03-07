FROM nginx:stable-alpine

COPY ./compose/nginx/nginx.conf /etc/nginx/nginx.conf

VOLUME /tmp/django.sock
# RUN chown nginx:nginx /tmp/django.sock

VOLUME /usr/share/nginx/html/static/
VOLUME /usr/share/nginx/html/media/

EXPOSE 80
