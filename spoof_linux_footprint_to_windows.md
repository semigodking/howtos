
# What
Check passive OS fingerprint here:
http://whatleaks.com:61099/check_pof/?1510539913111

# Spoof linux to windows
sysctl -w net.ipv4.tcp_timestamps=0
sysctl -w net.ipv4.tcp_window_scaling=0
iptables -t mangle -A POSTROUTING -o eth0 -p tcp  -j TTL --ttl-set 128

