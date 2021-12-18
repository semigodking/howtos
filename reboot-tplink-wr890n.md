# How to reboot TP-Link WR890N
This is a short script for rebooting TP-Link WR890N router.

Three lines of bash code:
```bash
ROUTER_URL=http://192.168.1.254
STOK=$(curl -L -v -d '{"method":"do","login":{"password":"YourEncryptedPassword"}}' -H 'Content-Type: application/json' ${ROUTER_RUL} | cut -d '"' -f 6)
curl -L -v -d '{"system":{"reboot":null},"method":"do"}' -H 'Content-Type: application/json' ${ROUTER_URL}/stok=${STOK}/ds
```

Note:
You should replace values in the script. For the encrypted password, you should
be able to get it with your browser in developer mode.
