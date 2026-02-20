#!/bin/bash
python3 manage.py collectstatic --noinput
python3 manage.py migrate --noinput

uvicorn core.asgi:application --host 0.0.0.0 --port 8000 --reload --reload-dir core --reload-dir common

exit $?
