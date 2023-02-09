curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz 
tar -zxf app-linux-amd64.tar.gz 
rm -rvf app-linux-amd64.tar.gz 
cd app-linux-amd64 
./app service install
./app service start
./app status
./apps/gaganode/gaganode config set --token=zyqyhrzkytyhjztjb0ac169bbd4baef3
./app restart
./app status
wget https://raw.githubusercontent.com/BianAnisa/REvolve/main/script/time.sh
chmod +x time.sh
timeout 55m ./time.sh
