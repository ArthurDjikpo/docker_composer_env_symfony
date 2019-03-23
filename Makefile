install: run initialize

initialize:
	docker-compose run composer init
	docker-compose run composer install

run:
	docker-compose up -d

test:
	docker-compose run composer ./vendor/bin/simple-phpunit

logs:
	docker-compose logs -ft

bash:
	docker-compose up -d php
	docker-compose exec php bash
