docker-compose -f ../start.yml up -d

# squid
iptables -A INPUT -p tcp -m multiport --dport 3128 -j ACCEPT
