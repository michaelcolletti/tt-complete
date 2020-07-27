#!/bin/bash
#
#
#
PROMINFO=Prometheus_Instructions.txt
GRAFINFO=Grafana_Instructions.txt

kill jobs %1 %2 >/dev/null 2>&1

printf "Checking for existing sockets \n"
netstat -na|egrep '3000|9090'

printf "Install Prometheus \n"
helm install prometheus stable/prometheus |tee -a $PROMINFO 

printf "Sleeping at `date` \n\n"
sleep 20
printf "_________________________ \n\n" >>$PROMINFO 

export POD_NAME=$(kubectl get pods --namespace default -l "app=prometheus,component=server" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace default port-forward $POD_NAME 9090 & >>$PROMINFO


printf "Install Grafana Chart \n"
helm install grafana stable/grafana |tee -a $GRAFINFO 
printf "Sleeping at `date` \n\n"
sleep 20
printf "################ \n\n" >>$GRAFINFO
export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana" -o jsonpath="{.items[0].metadata.name}") >> $GRAFINFO 

kubectl --namespace default port-forward $POD_NAME 3000 &

printf "Uninstall via helm : helm uninstall prometheus grafana \n"

