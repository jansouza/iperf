FROM alpine:edge AS base
ARG TARGETPLATFORM
ARG BUILDPLATFORM

RUN echo "TARGETPLATFORM=$TARGETPLATFORM BUILDPLATFORM=$BUILDPLATFORM"

# Install pakages
RUN apk add --no-cache \
    ca-certificates \
    bash \
    iperf3

# Expose the default iperf3 server ports
EXPOSE 5201/tcp 5201/udp

ENTRYPOINT ["iperf3"]

# iperf3 -s = run in Server mode
CMD ["-s"]