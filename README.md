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
-e TOPIC_NAME=test -e PARTITIONS=2 topic
```

## Delete a Topic

```bash
$ docker-compose \
run --rm --no-deps \
-e TOPIC_NAME=test delete
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

## Describe a Topic

```bash
$ docker-compose \
run --rm --no-deps \
-e TOPIC_NAME=test describe
```