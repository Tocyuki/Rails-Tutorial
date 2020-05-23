# Rails Tutorial
Study [Rails Tutorial](https://railstutorial.jp/chapters/beginning?version=5.1) on Docker!!

## Usage
### Initialize Project
1. Create Rails Project

```
$ make init
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
$ make build
```

### Destroy Project
```
$ make clean
```

### Development
#### Bundle
```
$ make bundle.update
$ make bundle.install
```

#### Docker
```
$ make docker.up
$ make docker.down
```

#### Rails
```
$ make rails.new
$ make rails.test
$ make rails.console
```
