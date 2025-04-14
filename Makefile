# Makefile pour gérer le serveur Minecraft via Docker Compose

DC := docker compose

.PHONY: up start stop logs restart down

## Démarre le serveur Minecraft en arrière-plan
up:
	$(DC) up -d

## Alias de la commande up
start: up

## Arrête le serveur Minecraft
stop:
	$(DC) stop

## Redémarre le serveur Minecraft
restart: stop up

## Affiche les logs du serveur en temps réel
logs:
	$(DC) logs -f

## Supprime le serveur et toutes les données (ATTENTION : cette action est destructive)
down:
	$(DC) down -v
