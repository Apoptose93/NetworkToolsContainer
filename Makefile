kubeforward-all:
	sudo -E kubefwd svc -n default

kube-tunneling:
	screen -d -m socat tcp-listen:3300,reuseaddr,fork tcp:example.com:3300
