# Kafka Learning

## 1. Setup Kafka cluster locally in MAC OSX using conduktor
- Install conduktor app locally using downloadable from [conduktor.io](https://www.conduktor.io/get-started/)
- Run below commands to setup kafka cluster using Konduktor
    ```
    curl -L https://releases.conduktor.io/quick-start -o docker-compose.yml && docker compose up -d --wait && echo "Conduktor started on http://localhost:8080"
    ```
- Access kafka cluster using [http://localhost:8080/](http://localhost:8080/)

## 2. Install KAFKA on MAC OSX (for CLI etc...)
- Run ```brew install kafka```
- Usually the installation location is 
    ```/opt/homebrew/bin/```
- Set this in ~/.zshrc 
```export PATH=$PATH:/opt/homebrew/bin/``` and run the command ```source ~/.zshrc```

Note: By now the kafka cli is setup... Get ready to run the kafka commands. Without this setup (setp 2) you have to run all the commands with full path

## 3. KAFKA Topics
| Command | Importance |
| ------- | ---------- |
|kafka-topics --bootstrap-server 0.0.0.0:19092 --list | List all topics from the kafka broker. |
|kafka-topics --bootstrap-server 0.0.0.0:19092 --create --topic first_name | Create new topic with default replication-factor and partitions |
|kafka-topics --bootstrap-server 0.0.0.0:19092 --create --topic first_name --replication-factor 1 | Create new topic with 1 replication-factor and default partitions |
|kafka-topics --bootstrap-server 0.0.0.0:19092 --create --topic first_name --replication-factor 1 --partitions 3 | Create new topic with 1 replication-factor and 3 partitions |