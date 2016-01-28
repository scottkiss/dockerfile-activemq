#!/bin/bash
#transportConnectors for ws

docker run -p=61614:61614 -p=8161:8161 -v `pwd`/conf:/apache-activemq-5.12.2/conf -v `pwd`/data:/apache-activemq-5.12.2/data -d scottkiss/activemq
