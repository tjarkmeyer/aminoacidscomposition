start-app: ## Start the django app for development
	python3 manage.py runserver

start-db: ## Start postgres DB
	docker run -d --rm --name dev-database -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres:13-alpine

stop-db:  ## Stop postgres DB
	docker stop dev-database

new-migration: ## Create new migiration files
	python3 manage.py makemigrations

migrate: ## Apply migration to DB
	python3 manage.py migrate

new-superuser: ## Create new super user
	python3 manage.py createsuperuser

postgres-login: ## login to local postgres instance
	psql -h localhost -U postgres

help: ## Display this help screen
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
