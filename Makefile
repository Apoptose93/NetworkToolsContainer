kubeforward-all:
	sudo -E kubefwd svc -n confluent

kube-tunneling:
	#kubectl exec -it --namespace=confluent controlcenter-0 -- bash -c "nc -l -k -p 3600 -c 'nc example.com 3600'"; \
	kubectl exec -it --namespace=default my-pod -- bash -c "screen -d -m socat tcp-listen:3300,reuseaddr,fork tcp:example.com:3300"; \
	kubectl port-forward --namespace=default my-pod 3300:3300
