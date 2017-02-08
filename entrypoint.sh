#!/bin/sh
set -e

# Render config file
cat metricbeat.yml | sed "s|LOGSTASH_HOSTS|${LOGSTASH_HOSTS}|g" | sed "s|ELASTICSEARCH_HOSTS|${ELASTICSEARCH_HOSTS}|g" > metricbeat.yml.tmp
cat metricbeat.yml.tmp > metricbeat.yml
rm metricbeat.yml.tmp

exec "$@"
