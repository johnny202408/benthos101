# Chuck Norris example for Benthos

### create a docker network
```
docker network create benthos-network

```

### Using a config file
```
docker run --rm -v /path/to/your/config_url_to_stdout.yaml:/benthos.yaml jeffail/benthos
```

### config file example for windows
docker run --rm --name benthos01 -v c:\\dev\\benthos101\\config_url_to_stdout.yaml:/benthos.yaml jeffail/benthos

### config file example for windows - kafka
docker run --rm --name benthos01 -v c:\\dev\\benthos101\\config_url_to_kafka.yaml:/benthos.yaml jeffail/benthos

### config file example for windows - ES
docker run --rm --name benthos01 -v c:\\dev\\benthos101\\config_url_to_es.yaml:/benthos.yaml jeffail/benthos

### run elasticsearch
```
docker run --name elasticsearch -d \
  -e discovery.type=single-node \
  -p 9200:9200 \
  -p 9300:9300 \
  docker.elastic.co/elasticsearch/elasticsearch:6.8.0
```

### run elasticsearch on windows
```
docker run --name elasticsearch -d ^
  -e discovery.type=single-node ^
  -p 9200:9200 ^
  -p 9300:9300 ^
  docker.elastic.co/elasticsearch/elasticsearch:6.8.0
```



### Using a series of -s flags
docker run --rm -p 4195:4195 jeffail/benthos \
  -s "input.type=http_server" \
  -s "output.type=kafka" \
  -s "output.kafka.addresses=kafka-server:9092" \
  -s "output.kafka.topic=benthos_topic"

### Run a kafka broker on docker
```
docker run -d --name zookeeper -p 2181:2181 zookeeper:3.4.9
docker run -d --name kafka -p 9092:9092 --env KAFKA_ZOOKEEPER_CONNECT=localhost:2181 --env KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092 --env KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 wurstmeister/kafka:2.12-2.2.0

```

### group by example
https://stackoverflow.com/questions/71084761/how-to-use-group-by-value-to-create-batches-in-benthos

