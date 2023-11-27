# Container names
## must match the names used in the docker-composer.yml files
DOCKER_SERVICE_APPLICATION_NAME:=cloudsql-proxy

# FYI:
# Naming convention for images is $(DOCKER_REGISTRY)/$(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(DOCKER_IMAGE_TAG)
# e.g.                      gcr.io/cloud-sql-connectors/cloud-sql-proxy:2.7.2
# $(DOCKER_REGISTRY)     -----^           ^                    ^          ^    gcr.io
# $(DOCKER_NAMESPACE)    -----------------^                    ^          ^    cloud-sql-connectors
# $(DOCKER_IMAGE)        --------------------------------------^          ^    cloud-sql-proxy
# $(DOCKER_IMAGE_TAG)    -------------------------------------------------^    2.7.2

DOCKER_DIR:=$(CURDIR)/src
DOCKER_ENV_FILE:=$(DOCKER_DIR)/.env
DOCKER_COMPOSE_FILE:=$(DOCKER_DIR)/compose.yml
