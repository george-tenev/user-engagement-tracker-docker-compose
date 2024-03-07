# user-engagement-tracker-docker-compose

Create kafka connect sink 

curl -X POST -H "Accept:application/json" -H "Content-Type:application/json" --data @questdb-sink-btc.json http://localhost:8083/connectors

Inspect container volumes 


docker inspect zookeeper|jq '.[].Mounts[] | .Type ,.Destination'