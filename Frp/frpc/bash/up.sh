docker-compose -f ../start.yml up -d

source ports.conf
# iptables -A INPUT -p tcp -m multiport --dport $_http_port -j ACCEPT
# echo "打开端口 $_bind_port,$_dashboard_port,$_http_port,$_https_port,$_allow_ports"
