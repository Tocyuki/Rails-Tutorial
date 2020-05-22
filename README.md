# Rails Tutorial
Study [Rails Tutorial](https://railstutorial.jp/chapters/beginning?version=5.1) on Docker!!

## Environment
| Name | Version |
|---|---|
| Ruby | 2.6.6 |
| Rails | 5.2.4.3 |
| MySQL | 5.7 |

## Usage
### Initialize Project
#### Create Rails Project
```
$ make init
```

#### Modify database.yml
```diff
 default: &default
   adapter: mysql2
   encoding: utf8
   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
   username: root
+  password: password
+  host: rails_tutorial_db
-  password:
-  host: localhost
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
