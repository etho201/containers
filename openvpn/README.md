
1. Build the image with:
    ```bash
    docker build -t etechonomy/openvpn .
    ```

2. Navigate to a directory with your ovpn file

3. Create an `auth.txt` file with the OpenVPN username and password on separate lines:
    ```bash
    username
    password
    ```

4. Connect to the VPN with:
    ```bash
    docker run --rm -v $(pwd):/tmp -w /tmp --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun -td --hostname vpn1 --name openvpn --network host etechonomy/openvpn *.ovpn --auth-user-pass auth.txt
    ```

5. To kill the VPN connection:
    ```bash
    docker kill openvpn
    ```
---
