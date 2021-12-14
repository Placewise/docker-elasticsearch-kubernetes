FROM quay.io/boostcom/docker-elasticsearch:6.8.21

LABEL maintainer="jakub.kruczek@boostcom.no"

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false
