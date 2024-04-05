#!/bin/bash
set -e

podman stop iperf
podman rm iperf
podman rmi iperf
podman ps