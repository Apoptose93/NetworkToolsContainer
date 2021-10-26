# Docker Network Tools

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

## Test internet connectability (ICMP)
### Can be blocked by firewall, while TCP requests still work fine
- with ping
    ```bash
    ping example.com
    ```
## Test service connection (TCP) on port:
### Useful for testing SMTP and HTTP web ports
- with netcat
    ```bash
    nc -vz example.com 3300
    ```
- with telnet
    ```bash
    telnet example.com 3300
    ```
- with nmap
    ```bash
    nmap -p 3300 example.com
    ```
- with nmap range of ports
    ```bash
    nmap -p 3300-3400 example.com
    ```

## See tracing/hops
- with traceroute
    ```bash
    traceroute example.com
    ```
- with traceroute using ICMP
    ```bash
    traceroute -I example.com
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