#!/bin/bash
clear
for ip in $(cat /etc/ansible/scripts/aix/acessos.txt); do
        nc -zvw 1 $ip 22
        if (( $? == 0 )); then
                echo "$ip > SUCCESS" >> /etc/ansible/scripts/aix/aix.log
                echo "$ip > SUCCESS"
        else
                echo "$ip > FAILED" >> /etc/ansible/scripts/aix/aix.log
                echo "$ip > FAILED"
        fi
        echo; echo "-------------------------------------------------"; echo;
done


