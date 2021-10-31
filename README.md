# Docker Network Tools

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/649c2ed0448546efb6a9f6f9c471ac26)](https://app.codacy.com/gh/Apoptose93/NetworkToolsContainer?utm_source=github.com&utm_medium=referral&utm_content=Apoptose93/NetworkToolsContainer&utm_campaign=Badge_Grade_Settings)

This Repository contains the Docker build for the apoptose/NetworkTools
container image.

It contains a range of utility software to test connections in container environments
like kubernetes and a corresponding set of useful commands.


## Deploy on Kubernetes:
- on your local machine
    ```bash
    kubectl deploy --namespace <namespace> apoptose/NetworkTools
    ```

## Tunnel a network connection through kubernetes to local:
- inside the running container on kubernetes
    ```bash
    screen -d -m socat tcp-listen:3300,reuseaddr,fork tcp:example.com:3300
    ```
- on your local machine
    ```bash
    kubectl port-forward --namespace=<namespace> <NetworkTools-pod> 3300:3300
    ```

## Test service connection on port:
- with netcat
    ```bash
    nc -vz example.com 3300
    ```
- with telnet
    ```bash
    telnet example.com 3300
    ```

## Containing Software:
- Nmap
https://nmap.org/
- Netcat
https://wiki.ubuntuusers.de/netcat/
- Socat
https://www.redhat.com/sysadmin/getting-started-socat
- NetTools
https://packages.ubuntu.com/bionic/net-tools
- Screen
https://wiki.ubuntuusers.de/Screen/

## This repository is open for contribution.