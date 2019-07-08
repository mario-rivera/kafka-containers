## Starting Kafka

```bash
$ docker-compose up -d \
zookeeper kafka
```

***
Connect your containers to the same network to interact with the kafka instance.
***

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

## Listen for Kafka Topic

```bash
docker-compose exec \
-e TOPIC_NAME=test kafka bash
```

Inside the container run

```bash
/usr/bin/kafka-console-consumer --bootstrap-server localhost:9092 --topic ${TOPIC_NAME}
```