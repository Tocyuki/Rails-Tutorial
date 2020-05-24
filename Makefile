.PHONY: setup clean

setup:
	make build
	make db.create
	make docker.up

clean:
	rm -rf db_data src
	make docker.down

build:
	docker-compose build

build.web:
	docker-compose build web

docker.up:
	docker-compose up -d

docker.down:
	docker-compose down

docker.restart.web:
	docker-compose restart web

new:
	docker-compose run --rm web rails _5.1.6_ new . --force --no-deps --database=postgresql
	docker-compose run --rm web rm -rf .git* README.md

test:
	docker-compose run --rm web rails test

test.controllers:
	docker-compose run --rm web rails test:controllers

test.models:
	docker-compose run --rm web rails test:models

console:
	docker-compose run --rm web rails console

console.sandbox:
	docker-compose run --rm web rails console --sandbox

db.connect:
	docker-compose run --rm web psql -h db -U postgres -d sample_app_development

db.create:
	docker-compose run --rm web rake db:create

db.migrate:
	docker-compose run --rm web rake db:migrate

db.rollback:
	docker-compose run --rm web rake db:rollback

bundle.install:
	docker-compose run --rm web bundle install

bundle.update:
	docker-compose run --rm web bundle update
