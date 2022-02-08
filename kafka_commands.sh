#create kafka topics

docker exec -it broker_kafka \
  kafka-topics --create \
    --topic purchases \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1

# run outside of docker
cd /Users/minhbui/Documents/GitHub/kafka_tutorial/pub_sub
## publish to topic
python producer.py getting_started.ini

## receive data/consume events, runs indefinitely waiting for new data being published
python consumer.py getting_started.ini