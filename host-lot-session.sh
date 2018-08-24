mgmt_cli -r true login > id.txt
for I in $(seq 1 10)
do
	mgmt_cli -r true add host name host-$I ip-address 11.11.11.$I -s id.txt
done
mgmt_cli -s id.txt publish
mgmt_cli -s id.txt logout
