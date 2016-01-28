#!/bin/bash
#transportConnectors for mqtt

docker run -p=1883:1883 -p=8161:8161 -v `pwd`/conf:/apache-activemq-5.12.2/conf -v `pwd`/data:/apache-activemq-5.12.2/data -d scottkiss/activemq
