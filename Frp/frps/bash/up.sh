docker-compose -f ../start.yml up -d

source config

iptables -A INPUT -p tcp -m multiport --dport $_bind_port,$_dashboard_port,$_http_port,$_https_port,$_allow_ports -j ACCEPT

echo "打开端口 $_bind_port,$_dashboard_port,$_http_port,$_https_port,$_allow_ports"
