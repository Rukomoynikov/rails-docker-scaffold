### Generation new rails app

Scaffolding new app in server directory:
```
docker-compose -f docker-compose.generate.yml run --rm generate rails new . -d postgresql -j webpack
```

In order to use Postgresql from docker-compose service it's needed to change database credentials:
```
default: &default
  ...
  host: postgres
  password: postgres
  user: postgres
```

Create database:
```
docker-compose run --rm web rails db:prepare
```

### Running existing app in "server" directory

In most cases this is simple:

```
docker-compose up web-run
```

### Running bash and and rails console if needed

```
docker-compose run --rm web bash
```