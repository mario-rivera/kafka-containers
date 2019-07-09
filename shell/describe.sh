#!/bin/bash
/usr/bin/kafka-topics --describe \
--zookeeper ${KAFKA_ZOOKEEPER_CONNECT} \
--topic ${TOPIC_NAME}