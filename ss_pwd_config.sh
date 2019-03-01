PASSWORD=$1
if [ ! -z "$PASSWORD" ]; then
    sed -i "s/passwordplaceholder/$PASSWORD/" /etc/v2ray/config.json
fi

service v2ray restart>/var/log/v2ray/v2ray_start.log
tail -f /var/log/v2ray/v2ray_start.log
