## Starting Kafka

```bash
$ docker-compose up -d \
zookeeper kafka
```

## Display Topic List

```bash
$ docker-compose \
run --rm --no-deps \
topiclist
```

## Create a Topic

```bash
$ docker-compose \
run --rm --no-deps \
-e TOPIC_NAME=test topic
```

***
Connect your containers to the same network to interact with the kafka instance.