# Rails Tutorial

Study [Rails Tutorial](https://railstutorial.jp/chapters/beginning?version=5.1) on Docker!!

## Usage

### Initialize Project

1. Create Rails Project

```
make rails.new
```

2. Modify database.yml

```diff
 default: &default
   adapter: postgresql
   encoding: unicode
+  host: rails_tutorial_db
+  username: postgres
+  password: postgres
   # For details on connection pooling, see Rails configuration guide
   # http://guides.rubyonrails.org/configuring.html#database-pooling
   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
```

3. Build

```
make setup
```

### Destroy Project

```
make clean
```

### Development Commands

#### Bundle

```
make bundle.update
make bundle.install
make bundle.exec.guard
```

#### Docker

```
make docker.up
make docker.up.web
make docker.up.db
make docker.down
make docker.down.web
make docker.down.db
make docker.restart
make docker.restart.web
make docker.restart.db
make docker.build
make docker.build.web
make docker.build.db
```

#### Rails

```
make rails.new
make rails.test
make rails.test.controllers
make rails.test.models
make rails.test.integration
make rails.console
make rails.console.sandbox
make rails.routes
```

#### Rake DB

```
make db.migrate
make db.migrate.reset
make db.seed
make db.rollback
make db.connect
```
