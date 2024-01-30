docker-compose -f ../start.yml down

# squid
iptables -D INPUT -p tcp -m multiport --dport 3128 -j ACCEPT
