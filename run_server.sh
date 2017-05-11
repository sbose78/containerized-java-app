#!/usr/bin/env bash


echo  "Ensuring the port $SERVER_PORT is freed."
fuser -k -n tcp $SERVER_PORT

echo " Starting the server in detached mode. This will take about 5 minutes the first time  "
mvn spring-boot:run  -D server.port=$SERVER_PORT >> start.log 2>&1 &

# Wait for the server to come up..
while ! (ncat -w 1 127.0.0.1 $SERVER_PORT </dev/null >/dev/null 2>&1); do sleep 1; done
echo "Server started on port $SERVER_PORT"