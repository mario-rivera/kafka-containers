#!/bin/bash
/usr/bin/kafka-topics -create \
--partitions 1 --replication-factor 1 --if-not-exists \
--zookeeper ${KAFKA_ZOOKEEPER_CONNECT} \
--topic ${TOPIC_NAME}