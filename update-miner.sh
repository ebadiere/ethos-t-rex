TMP_DIR=/tmp/ethos-t-rex
mkdir $TMP_DIR
git -C $TMP_DIR clone https://github.com/ebadiere/ethos-t-rex.git
disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
sudo cp -r $TMP_DIR/ethos-t-rex/opt/miners/* /opt/miners/
sudo service ethos-miner-monitor restart
rm -rf $TMP_DIR
allow
echo 'done'
