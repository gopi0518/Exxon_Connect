FROM confluentinc/cp-server-connect:7.3.0
RUN wget http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.22.tar.gz -O /tmp/mysql-connector.tar.gz
RUN tar -xvzf /tmp/mysql-connector.tar.gz
RUN cp mysql-connector-java-8.0.22/mysql-connector-java-8.0.22.jar /usr/share/java/
RUN chmod 777 /usr/share/java/mysql-connector-java-8.0.22.jar
RUN confluent-hub install confluentinc/kafka-connect-jdbc:10.6.3 --no-prompt
RUN cp mysql-connector-java-8.0.22/mysql-connector-java-8.0.22.jar /usr/share/confluent-hub-components/confluentinc-kafka-connect-jdbc/lib/
