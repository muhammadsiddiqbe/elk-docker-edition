down:
	docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml --env-file .env down -v

up:
	docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml --env-file .env up -d

build:
	docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml --env-file .env build

rerun:
	make down && make build && make up


