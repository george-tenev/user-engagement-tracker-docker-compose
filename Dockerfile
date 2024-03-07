FROM alpine:latest AS builder

RUN wget https://github.com/questdb/kafka-questdb-connector/releases/download/v0.9/kafka-questdb-connector-0.9-bin.zip && \
    unzip kafka-questdb-connector-*-bin.zip
    
FROM confluentinc/cp-kafka-connect:7.6.0
COPY --from=builder /kafka-questdb-connector/*.jar /usr/share/java/kafka/