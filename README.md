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
docker run --rm -v c:\\dev\\benthos101\\config_url_to_stdout.yaml:/benthos.yaml jeffail/benthos

### config file example for windows - kafka
docker run --rm -v c:\\dev\\benthos101\\config_url_to_kafka.yaml:/benthos.yaml jeffail/benthos



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
