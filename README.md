# Metricbeat

## Prerequisites

Docker engine and optionally docker-compose

## Quick Start

Clone this repository and cd to metricbeat

Build docker image

```
# docker build --rm=true --tag <your_metricbeat_image_tag> .
```

Edit metricbeat.yml to configure metricsets and output destination, either logstash or elasticsearch 

Start container from command line.

```
# docker run -d -v ./metricbeat.yml:/metricbeat/metricbeat.yml --name <your_container_name> <your_metricbeat_image_tag>
```

Or optionally use docker-compose. Edit the docker-compose.yml to use either your locally built image or pull from docker hub
```
# docker-compose up -d
```
