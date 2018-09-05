cd /v2ray
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip 
mv /v2ray/v2ray-v$VER-linux-64/v2ray .
mv /v2ray/v2ray-v$VER-linux-64/v2ctl .
mv /v2ray/v2ray-v$VER-linux-64/geoip.dat .
mv /v2ray/v2ray-v$VER-linux-64/geosite.dat .
chmod +x v2ray v2ctl

sed -i "s/your_uuid/$UUID/g" config.json
sed -i "s|HR_PORT|$PORT|g"  /etc/nginx/conf.d/default.conf
#sed -i "s|path_1|$path_1|g"  /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
