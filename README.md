# Bard VPN

A Docker container that connects to a VPN for people outside the US to use bard-cli. 

## Usage

Insert the "__Secure-1PSID" cookie, that you get from bard.google.com into the .bardcli.yaml file as stated on the [bard-cli](https://github.com/mosajjal/bard-cli) page.

Copy the VPN config files you have inside of the folder. I use a simple .ovpn file so that's why i commented the other options out.

If you have a vpn.conf file with all those certificates I believe you have to change line 12 to "openvpn --config /etc/openvpn/vpn.conf" as well.

When you have all the files inside of the folder, simply start the container with "docker run bard-cli <your input here>" and it should work.

I have it aliased to *bardi* and that works super nice for me.

I hope someone gets a use out of this simple container and if you have any questions, feel free to ask.


