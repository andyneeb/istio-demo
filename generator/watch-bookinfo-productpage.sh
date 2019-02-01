#!/bin/sh
PRODUCTPAGE="http://istio-ingressgateway-istio-system.apps.andyneeb.com/productpage"
while true
do
	RESULT=$(curl -o /dev/null -s -w %{http_code}\n ${PRODUCTPAGE})
	echo "Watching ${PRODUCTPAGE} => $RESULT"	
	sleep 1
done
