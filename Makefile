.PHONY: init build clean

init:
	make rails.new

build:
	make docker.build
	make rake.db.create
	make docker.up

clean:
	rm -rf db_data src
	make docker.down

docker.build:
	docker-compose build

docker.up:
	docker-compose up -d

docker.down:
	docker-compose down

rails.new:
	docker-compose run --rm web rails _5.1.6_ new . --force --no-deps --database=postgresql
	docker-compose run --rm web rm -rf .git* README.md

rails.test:
	docker-compose run --rm web rails test

rails.console:
	docker-compose run --rm web rails console

rake.db.create:
	docker-compose run --rm web rake db:create

rake.db.migrate:
	docker-compose run --rm web rake db:migrate

bundle.install:
	docker-compose run --rm web bundle install

bundle.update:
	docker-compose run --rm web bundle update
