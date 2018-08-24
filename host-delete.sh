mgmt_cli -r true login > id.txt
for I in $(seq 1 10)
do
	mgmt_cli -r true delete host name host-$I -s id.txt
done
mgmt_cli -s id.txt publish
mgmt_cli -s id.txt logout
