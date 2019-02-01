#!/bin/sh

ENDPOINT=${1:-http://istio-ingressgateway-istio-system.apps.andyneeb.com/productpage}

while true
do
	RESULT=$(curl -o /dev/null -s -w %{http_code}\n ${ENDPOINT})
	echo "Watching ${ENDPOINT} => $RESULT"	
	sleep 1
done
