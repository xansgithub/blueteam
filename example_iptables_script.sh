echo --------------------------------------------
# flush table
iptables -F

# allow ssh incoming/outgoing
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT

# drop the rest
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP
iptables -A OUTPUT -p tcp -j DROP
iptables -A OUTPUT -p udp -j DROP

iptables-save
iptables -L

echo ---------------------------------------------
echo saved to config! hopefully
