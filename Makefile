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

