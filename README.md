# Rails Tutorial
Study [Rails Tutorial](https://railstutorial.jp/chapters/beginning?version=5.1) on Docker!!

## Usage
### Initialize Project
#### Create Rails Project
```
$ make init
```

#### Modify database.yml
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

#### Build
```
$ make build
```

### Destroy Project
#### Cleanup
```
$ make clean
```

### Development
#### Bundle Install
```
$ make bundle.install
```

#### Docker Up & Down
```
$ make docker.up
$ make docker .down
```
