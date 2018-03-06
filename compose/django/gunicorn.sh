#!/bin/sh
python /app/manage.py compilescss
python /app/manage.py compress
python /app/manage.py collectstatic --noinput
/usr/local/bin/gunicorn config.wsgi -w 4 -b ./.var/django.sock --chdir=/app --access-logfile /var/log/gunicorn.out.log --error-logfile /var/log/gunicorn.err.log --capture-output
