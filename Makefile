down:
	docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml --env-file .env down

up:
	docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml --env-file .env up -d

build:
	docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml --env-file .env build

filebeat-restart:
	docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml restart filebeat

rerun:
	make down && make build && make up


