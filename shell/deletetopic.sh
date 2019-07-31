#!/bin/bash
/usr/bin/kafka-topics --delete \
--zookeeper ${KAFKA_ZOOKEEPER_CONNECT} \
--topic ${TOPIC_NAME}