Producer:
docker exec -it kafka kafka-console-producer.sh --topic test_topic --bootstrap-server localhost:9092

Consumer:
docker exec -it kafka kafka-console-consumer.sh --topic test_topic --bootstrap-server localhost:9092 --from-beginning

For Debezium setup:
https://debezium.io/documentation/reference/stable/tutorial.html#viewing-create-event
https://debezium.io/documentation/reference/stable/connectors/mysql.html#debezium-connector-for-mysql

Connector setup:
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ --data @register-mysql.json

Watcher setup:
docker run -it --rm --name watcher --network kafka-test_kafka_network --link zookeeper:zookeeper --link kafka:kafka --env ZOOKEEPER_CONNECT=zookeeper:2181 --env KAFKA_BROKER=kafka:9092 quay.io/debezium/kafka:3.0 watch-topic -a -k dbserver1.<DB_NAME>.<TABLE_NAME>

Error sources:
1. Error response from daemon: manifest for debezium/connect:latest not found: manifest unknown: manifest unknown
    - Fix: specify version tag
2. 