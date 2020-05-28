# Rails Tutorial
Study [Rails Tutorial](https://railstutorial.jp/chapters/beginning?version=5.1) on Docker!!

## Usage
### Initialize Project
1. Create Rails Project

```
$ make rails.new
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
$ make setup
```

### Destroy Project
```
$ make clean
```

### Development Commands
#### Bundle
```
$ make bundle.update
$ make bundle.install
```

#### Docker
```
$ make docker.up
$ make docker.down
$ make docker.build
$ make docker.build.web
$ make docker.build.db
```

#### Rails
```
$ make rails.new
$ make rails.test
$ make rails.test.controllers
$ make rails.test.models
$ make rails.console
$ make rails.console.sandbox
```

#### Rake
```
$ make db.migrate
$ make db.reset
$ make db.rollback
$ make db.connect
```
