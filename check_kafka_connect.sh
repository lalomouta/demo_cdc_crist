#!/usr/bin/env bash

#Check status of Kafka Connect
echo "Check Status of Kafka Connect"
curl -H "Accept:application/json" localhost:8083/

#Check the list of connectors registered with Kafka Connect
echo "Registered connectors"
curl -H "Accept:application/json" localhost:8083/connectors/

#["jdbc-sink","inventory-connector"]% 

#Deploying a connector
# 1) writing the connector config directly in the command
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d '{ "name": "inventory-connector", "config": { "connector.class": "io.debezium.connector.mysql.MySqlConnector", "tasks.max": "1", "database.hostname": "mysql", "database.port": "3306", "database.user": "debezium", "database.password": "dbz", "database.server.id": "184054", "topic.prefix": "dbserver1", "database.include.list": "inventory", "schema.history.internal.kafka.bootstrap.servers": "kafka:9092", "schema.history.internal.kafka.topic": "schemahistory.inventory" } }'

# 2) writing the connector config in a JSON file, and copying the file to connector
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @connectors/ps_cr_th_activo-sink.json

#Check connector tasks
#curl -i -X GET -H "Accept:application/json" localhost:8083/connectors/inventory-connector
curl -i -X GET -H "Accept:application/json" localhost:8083/connectors/jdbc-sink

#Remove connector
#curl -X DELETE http://localhost:8083/connectors/<connector-name>
#curl -X DELETE http://localhost:8083/connectors/jdbc-sink

