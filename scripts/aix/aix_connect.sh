#!/bin/bash
clear
ipaddr[0]=10.124.79.34
ipaddr[1]=10.124.79.61
ipaddr[2]=10.13.0.81
ipaddr[3]=192.168.208.98
ipaddr[4]=192.168.219.169
ipaddr[5]=192.168.219.199
ipaddr[6]=10.13.172.110
ipaddr[7]=10.13.0.195
ipaddr[8]=10.13.0.191
ipaddr[9]=10.13.0.192
ipaddr[10]=10.13.0.194
ipaddr[11]=10.13.172.131
ipaddr[12]=192.168.208.96
ipaddr[13]=192.168.208.97
ipaddr[14]=10.124.79.40
ipaddr[15]=10.124.79.58
ipaddr[16]=10.124.79.55
ipaddr[17]=10.124.79.54
ipaddr[18]=172.25.16.33
ipaddr[19]=172.25.16.28
ipaddr[20]=172.25.16.32
ipaddr[21]=172.25.16.26
ipaddr[22]=10.154.73.31
ipaddr[23]=10.154.72.42
ipaddr[24]=10.154.72.41
ipaddr[25]=10.154.72.41
ipaddr[26]=10.154.73.127
ipaddr[27]=10.154.72.175
ipaddr[28]=10.154.22.53
ipaddr[29]=10.154.72.178
ipaddr[30]=10.154.72.42
ipaddr[31]=10.154.22.51
ipaddr[32]=10.154.72.176
ipaddr[33]=192.168.192.81
ipaddr[34]=10.13.0.201
ipaddr[35]=172.25.16.12
ipaddr[36]=172.25.16.17
ipaddr[37]=172.25.16.29
ipaddr[38]=172.25.16.31
ipaddr[39]=172.25.16.22
ipaddr[40]=172.25.16.24
ipaddr[41]=172.25.16.25
ipaddr[42]=172.25.16.10
ipaddr[43]=172.25.16.14
ipaddr[44]=172.25.16.48
ipaddr[45]=172.25.16.15
ipaddr[46]=172.25.16.27
ipaddr[47]=172.25.16.13
ipaddr[48]=172.25.16.23
ipaddr[49]=172.25.16.20
ipaddr[50]=172.25.16.18
ipaddr[51]=172.25.16.30
ipaddr[52]=172.25.16.11
ipaddr[53]=172.25.16.16
ipaddr[54]=172.25.16.21
ipaddr[55]=172.25.16.19
ipaddr[56]=10.13.172.79
ipaddr[57]=10.13.31.201
ipaddr[58]=10.13.31.204
ipaddr[59]=10.154.73.127
ipaddr[60]=10.154.22.56
ipaddr[61]=10.154.22.57
ipaddr[62]=10.154.22.58
ipaddr[63]=10.154.22.59
ipaddr[64]=10.154.72.167
ipaddr[65]=10.154.72.168
ipaddr[66]=10.154.72.169
ipaddr[67]=10.154.72.170
ipaddr[68]=10.154.22.47
ipaddr[69]=10.154.22.48
ipaddr[70]=10.154.22.53
ipaddr[71]=10.154.72.173
ipaddr[72]=10.154.22.55
ipaddr[73]=10.199.65.10
ipaddr[74]=10.199.65.12
ipaddr[75]=10.199.65.11
ipaddr[76]=10.50.110.140
ipaddr[77]=10.50.110.120
ipaddr[78]=10.50.110.239
ipaddr[79]=10.50.110.90
ipaddr[80]=10.50.110.201
ipaddr[81]=10.50.110.206
ipaddr[82]=10.50.110.30
ipaddr[83]=10.50.110.4
ipaddr[84]=10.50.110.100
ipaddr[85]=10.50.110.60
ipaddr[86]=10.50.110.70
ipaddr[87]=10.50.110.242
ipaddr[88]=10.50.110.15
ipaddr[89]=10.50.110.16
ipaddr[90]=10.50.110.11
ipaddr[91]=10.50.110.12
ipaddr[92]=10.50.110.207
ipaddr[93]=10.50.110.233
ipaddr[94]=10.50.110.50
ipaddr[95]=10.50.110.219
ipaddr[96]=10.101.1.167
ipaddr[97]=10.101.1.162
ipaddr[98]=10.101.1.149
ipaddr[99]=10.101.1.164
ipaddr[100]=10.101.1.165
ipaddr[101]=10.101.1.166
ipaddr[102]=10.101.1.161
ipaddr[103]=10.101.1.160
ipaddr[104]=10.101.1.155
ipaddr[105]=10.50.110.190
ipaddr[106]=10.50.110.110
ipaddr[107]=10.50.110.208
ipaddr[108]=10.50.111.141
ipaddr[109]=10.50.111.142
ipaddr[110]=10.50.111.127

i=$(echo ${#IPADDR[@]})
let i=(i-1)
while (( $i >= 0 )); do
	nc -zvw 1 ${IPADDR[$i]} 22
	if (( $? == 0 )); then
		echo "${IPADDR[$i]} > SUCCESS" >> /etc/ansible/scripts/aix/aix.log
		echo "${IPADDR[$i]} > SUCCESS"
	else
		echo "${IPADDR[$i]} > FAILED" >> /etc/ansible/scripts/aix/aix.log
                echo "${IPADDR[$i]} > FAILED"
	fi
	echo; echo "-------------------------------------------------"; echo;
	let i=(i-1)
done

