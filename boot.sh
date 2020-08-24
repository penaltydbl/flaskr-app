#!/bin/sh
source venv/bin/activate
flask init-db
exec gunicorn -b :5000 --access-logfile - --error-logfile - "flaskr:create_app('production')"

