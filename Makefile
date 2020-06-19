.PHONY: setup clean

setup:
	make docker.build
	make db.create
	make docker.up

clean:
	rm -rf db_data src
	make docker.down

docker.build:
	docker-compose build

docker.build.web:
	docker-compose build web

docker.build.db:
	docker-compose build db

docker.up:
	docker-compose up -d

docker.up.web:
	docker-compose up -d web

docker.up.db:
	docker-compose up -d db

docker.down:
	docker-compose down

docker.down.web:
	docker-compose down web

docker.down.db:
	docker-compose down db

docker.restart:
	docker-compose restart

docker.restart.web:
	docker-compose restart web

docker.restart.db:
	docker-compose restart web

rails.new:
	docker-compose run --rm web rails _5.1.6_ new . --force --no-deps --database=postgresql
	docker-compose run --rm web rm -rf .git* README.md

rails.test:
	docker-compose run --rm web rails test

rails.test.controllers:
	docker-compose run --rm web rails test:controllers

rails.test.models:
	docker-compose run --rm web rails test:models

rails.test.integration:
	docker-compose run --rm web rails test:integration

rails.console:
	docker-compose run --rm web rails console

rails.console.sandbox:
	docker-compose run --rm web rails console --sandbox

rails.routes:
	docker-compose run --rm web rails routes

db.connect:
	docker-compose run --rm web psql -h db -U postgres -d sample_app_development

db.create:
	docker-compose run --rm web rake db:create

db.migrate:
	docker-compose run --rm web rake db:migrate

db.migrate.reset:
	docker-compose run --rm web rake db:migrate:reset

db.rollback:
	docker-compose run --rm web rake db:rollback

db.seed:
	docker-compose run --rm web rake db:seed

bundle.install:
	docker-compose run --rm web bundle install

bundle.update:
	docker-compose run --rm web bundle update

bundle.exec.guard:
	docker-compose run --rm web bundle exec guard
