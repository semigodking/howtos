
## Backup my custom config and data
```shell
cd /; tar -zcf /tmp/i120em.tgz /etc/inittab /etc/sysctl.conf /etc/dnsmasq.conf /etc/crontabs/ /etc/init.d/  /etc/ppp/ip-up  /etc/ppp/ip-down /etc/ppp/ip-pre-up /usr/local/ct/ /etc/scripts/add_asb_user.sh
```

## Some commands
```shell
cfgcli -s InternetGatewayDevice.X_ASB_COM_AppCfg.DnsProxyCfg.Enable false
cfgcli -s InternetGatewayDevice.X_ASB_COM_AppCfg.SshdCfg.NetworkAccess  LAN
cfgcli -s InternetGatewayDevice.X_CT-COM_RtProxyCfg.Enable false
cfgcli -s InternetGatewayDevice.X_ASB_COM_DoSProtectionEnableCfg.Enable false
cfgcli -g InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.DHCPConditionalServingPool.1.DHCPOptionNumberOfEntries

```
