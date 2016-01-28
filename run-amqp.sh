#!/bin/bash
#transportConnectors for amqp

docker run -p=5672:5672 -p=8161:8161 -v `pwd`/conf:/apache-activemq-5.12.2/conf -v `pwd`/data:/apache-activemq-5.12.2/data -d scottkiss/activemq
