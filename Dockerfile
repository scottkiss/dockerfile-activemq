FROM java:7

MAINTAINER scottkiss <skkmvp@hotmail.com>
ENV REFRESHED_AT 2016-01-28



RUN curl https://repository.apache.org/content/repositories/releases/org/apache/activemq/apache-activemq/5.12.2/apache-activemq-5.12.2-bin.tar.gz | tar -xz

EXPOSE 1883 61613 61614 61616 5672 8161

CMD java -Xms1G -Xmx1G -Djava.util.logging.config.file=logging.properties -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote -Djava.io.tmpdir=apache-activemq-5.12.2/tmp -Dactivemq.classpath=apache-activemq-5.12.2/conf -Dactivemq.home=apache-activemq-5.12.2 -Dactivemq.base=apache-activemq-5.12.2 -Dactivemq.conf=apache-activemq-5.12.2/conf -Dactivemq.data=apache-activemq-5.12.2/data -jar apache-activemq-5.12.2/bin/activemq.jar start


