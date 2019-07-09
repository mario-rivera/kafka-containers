#!/bin/bash
/usr/bin/kafka-topics -create \
--zookeeper ${KAFKA_ZOOKEEPER_CONNECT} \
--replication-factor 1 --if-not-exists \
--partitions ${PARTITIONS} \
--topic ${TOPIC_NAME}