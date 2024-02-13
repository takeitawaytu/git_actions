.PHONY: shell lint test

install:
	poetry install

shell:
	poetry run python manage.py shell

start_server:
	poetry run python manage.py runserver 127.0.0.1:8000

requirements: poetry.lock
	poetry export --format requirements.txt --output requirements.txt --without-hashes

test:
	poetry run python manage.py test

test-coverage:
	poetry run coverage run --source='ci_proj' manage.py test
	poetry run coverage xml
	poetry run coverage report

lint:
	poetry run flake8 ci_proj --exclude=ci_proj/settings.py