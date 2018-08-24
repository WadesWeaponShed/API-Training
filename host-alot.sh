for I in $(seq 1 10)
do
	mgmt_cli -r true add host name host-$I ip-address 11.11.11.$I
done
