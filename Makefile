.PHONY: build up down test k8s-apply k8s-delete

# Docker Compose Commands
build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

# Testing
test:
	npm test

# Kubernetes Commands
k8s-apply:
	kubectl apply -f k8s/deployment.yaml
	kubectl apply -f k8s/service.yaml

k8s-delete:
	kubectl delete -f k8s/deployment.yaml
	kubectl delete -f k8s/service.yaml
