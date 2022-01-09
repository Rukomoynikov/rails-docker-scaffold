.DEFAULT_GOAL := run_server
.PHONY: generate run_server run_console

generate:
	sed -i 'dev: &dev\n  host: postgres\n  user: postgres\n  password: postgres\n' server/config/database.yml
run_server:
	docker-compose up web-run
run_console:
	docker-compose run --rm web-run bash