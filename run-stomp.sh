#!/bin/bash
#transportConnectors for stomp

docker run -p=61613:61613 -p=8161:8161 -v `pwd`/conf:/apache-activemq-5.12.2/conf -v `pwd`/data:/apache-activemq-5.12.2/data -d scottkiss/activemq
