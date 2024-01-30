docker-compose -f ../start.yml down

source ports.conf
# iptables -D INPUT -p tcp -m multiport --dport $_http_port -j ACCEPT
# echo "关闭端口 $_bind_port,$_dashboard_port,$_http_port,$_https_port,$_allow_ports"
