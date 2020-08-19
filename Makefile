init:
	touch docker/mysql_logs/mysql-error.log
	cp .env.sample .env
	cp api/.env.example api/.env
up:
	docker-compose up -d
down:
	docker-compose down

build:
	docker-compose build

ps:
	docker-compose ps

phpsh:
	docker-compose exec php ash
mysqlsh:
	docker-compose exec mysql ash
mysqlcli:
	docker-compose exec mysql mysql -u prayground -p
phptest:
	docker-compose exec php vendor/bin/phpunit

dbm:
	docker-compose exec php php artisan migrate
