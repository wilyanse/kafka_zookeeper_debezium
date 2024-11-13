Producer:
docker exec -it kafka kafka-console-producer.sh --topic test_topic --bootstrap-server localhost:9092

Consumer:
docker exec -it kafka kafka-console-consumer.sh --topic test_topic --bootstrap-server localhost:9092 --from-beginning