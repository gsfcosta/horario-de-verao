#!/bin/bash
clear
for ip in $(cat /etc/ansible/scripts/windows/acessos.txt); do
	nc -zvw 1 $ip 3389
	if (( $? == 0 )); then
		echo "$ip > RDP SUCCESS" >> /etc/ansible/scripts/windows/windows.log
		echo "$ip > RDP SUCCESS"
		nc -zvw 2 $ip 5985
		if (( $? == 0 )); then
			echo "$ip > WINRM SUCCESS" >> /etc/ansible/scripts/windows/windows.log
			echo "$ip > WINRM SUCCESS"
		else
			echo "$ip > WINRM FAILED" >> /etc/ansible/scripts/windows/windows.log
			echo "$ip > WINRM FAILED"
		fi
	else
		echo "$ip > RDP FAILED" >> /etc/ansible/scripts/windows/windows.log
                echo "$ip > RDP FAILED"
	fi
	echo; echo "-------------------------------------------------"; echo;
done

