#!/bin/bash

NAMESPACES=$(oc get projects | awk '{print $1}' | tail -n +2)

# transpose into array
NAMESPACES=(  $( echo $NAMESPACES ) )

for ns in "${NAMESPACES[@]}"
do
	oc get appwrapper -n "$ns" -o json
done
