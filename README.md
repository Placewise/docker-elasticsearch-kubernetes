# docker-elasticsearch-kubernetes

Ready to use, lean Elasticsearch Docker image ready for using within a Kubernetes cluster.

[![Docker Repository on Quay](https://quay.io/repository/boostcom/docker-elasticsearch-kubernetes/status "Docker Repository on Quay")](https://quay.io/repository/boostcom/docker-elasticsearch-kubernetes)

## Current software

* Alpine Linux 3.8
* IcedTea JRE 8u181
* Elasticsearch 6.8.21

**Note:** `x-pack-ml` module is forcibly disabled as it's not supported on Alpine Linux.

## Run

See [pires/kubernetes-elasticsearch-cluster](https://github.com/pires/kubernetes-elasticsearch-cluster) for instructions on how to run, scale and use Elasticsearch on Kubernetes.

## Environment variables

This image can be configured by means of environment variables, that one can set on a `Deployment`.

Besides the [inherited ones](https://github.com/pires/docker-elasticsearch#environment-variables), this container image provides the following:

* [DISCOVERY_SERVICE](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-discovery-zen.html#unicast) - the service to be queried for through DNS (default = `elasticsearch-discovery`).
* [MEMORY_LOCK](https://www.elastic.co/guide/en/elasticsearch/reference/current/important-settings.html#bootstrap.memory_lock) - memory locking control defaults to `false` as Kubernetes requires swap to be disabled.

## Creator

https://github.com/pires/docker-elasticsearch-kubernetes
