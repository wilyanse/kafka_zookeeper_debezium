Producer:
docker exec -it kafka kafka-console-producer.sh --topic test_topic --bootstrap-server localhost:9092

Consumer:
docker exec -it kafka kafka-console-consumer.sh --topic test_topic --bootstrap-server localhost:9092 --from-beginning

For Debezium setup:
https://debezium.io/documentation/reference/stable/tutorial.html#viewing-create-event
https://debezium.io/documentation/reference/stable/connectors/mysql.html#debezium-connector-for-mysql

Connector setup:
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ --data @register-mysql.json

Error sources:
1. Error response from daemon: manifest for debezium/connect:latest not found: manifest unknown: manifest unknown
    - Fix: specify version tag
2. 