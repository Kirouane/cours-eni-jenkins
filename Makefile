start:
	docker compose up -d
	@echo 'jenkins http://localhost:8080'
	@echo 'gogs http://localhost:3000'


stop:
	docker compose down --remove-orphans

restart: stop start

clean:
	rm -rf tmp/gogs
	docker compose down --remove-orphans -v

jenkins.ssh:
	docker compose exec jenkins-blueocean bash
