FROM alpine:latest

RUN apk update && apk add openvpn

# Copy the VPN configuration files into the container
COPY vpn.ovpn /etc/openvpn/
# COPY vpn.conf /etc/openvpn/
# COPY ca.crt /etc/openvpn/
# COPY client.crt /etc/openvpn/
# COPY client.key /etc/openvpn/

# Start the OpenVPN client
CMD openvpn /etc/openvpn/vpn.ovpn

RUN apk update && apk add go

# Install the Go program
RUN go install github.com/mosajjal/bard-cli@latest

COPY .bardcli.yaml /root/

# Set the entrypoint to the Go program
ENTRYPOINT [ "/root/go/bin/bard-cli"]
