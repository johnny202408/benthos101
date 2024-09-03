# Chuck Norris example for Benthos

# Using a config file
```
docker run --rm -v /path/to/your/config.yaml:/benthos.yaml jeffail/benthos
```

# config file example for windows
docker run --rm -v c:\\dev\\benthos101\\config.yaml:/benthos.yaml jeffail/benthos

# Using a series of -s flags
docker run --rm -p 4195:4195 jeffail/benthos \
  -s "input.type=http_server" \
  -s "output.type=kafka" \
  -s "output.kafka.addresses=kafka-server:9092" \
  -s "output.kafka.topic=benthos_topic"

