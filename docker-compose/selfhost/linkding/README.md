# linkding

linkding is a simple bookmark service that you can host yourself. It's designed be to be minimal, fast, and easy to set up using Docker.

## User setup
``` bash
docker compose exec linkding python manage.py createsuperuser --username=joe --email=joe@example.com
```