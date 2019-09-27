#!/bin/bash
clear
i=0
for ip in $(cat /ansible/scripts/linux/acessos.txt); do
        nc -zvw 1 $ip 22
        if (( $? == 0 )); then
                echo "$ip > SUCCESS" >> /ansible/scripts/linux/list.txt
                echo "$ip > SUCCESS"
        #       echo "[linux$i]" >> /etc/ansible/hosts
        #       echo $ip >> /etc/ansible/hosts; echo
                let i=(i+1)
        else
                echo "$ip > FAILED" >> /ansible/scripts/linux/list.txt
                echo "$ip > FAILED"
        fi
        echo; echo "-------------------------------------------------"; echo;
done
#bash /etc/ansible/scripts/linux/sshcopy.sh
