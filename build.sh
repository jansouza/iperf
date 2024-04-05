#!/bin/bash
set -e

podman build --tag iperf -f ./Dockerfile
podman run -dit --name iperf -p 5201:5201 iperf
podman ps