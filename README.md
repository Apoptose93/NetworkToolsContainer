# Docker Network Tools

This Repository contains the Docker build for the apoptose/NetworkTools
container image.

It contains a range of utility software to test connections in container environments
like kubernetes and a corresponding set of useful commands.


Deploy on Kubernetes:
kubectl deploy --namespace <namespace> apoptose/NetworkTools

Tunnel a network connection through kubernetes to local:
- inside the running container on kubernetes
    ```bash
    screen -d -m socat tcp-listen:3300,reuseaddr,fork tcp:example.com:3300
    ```
- on your local machine
    ```bash
    kubectl port-forward --namespace=<namespace> <NetworkTools-pod> 3300:3300
    ```
This repository is open for contribution.