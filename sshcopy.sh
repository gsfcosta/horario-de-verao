#!/bin/bash
touch /tmp/noaccess.log
echo "Fazendo testes de conexao"
n=1
t=2
while (( $t != 0 )); do
        IP=$(ansible -m ping server$n | cut -d' ' -f1 | sed -n '1p')
        ansible -m ping server$n | grep UNREACHABLE
        if (($? == 0)); then
                echo "$IP" >> /tmp/noaccess.log
        fi
        let t=(t-1)
        let n=(n+1)
done
