#!/bin/bash

echo "Starting puppet Run"

/usr/bin/sudo /sbin/service puppet restart

until /usr/bin/sudo tail -n1 /var/log/puppet/puppet.log | grep -q "Finished catalog"; do
  echo "Waiting for puppet to finish $(date)"
  sleep 100
done


puppetStatus="good"
if [ -z "`/usr/bin/sudo /sbin/service puppet status | grep -i "running"`" ]	
then
	puppetStatus="bad"
elif [ "`/usr/bin/sudo tail -n 5 /var/log/puppet/puppet.log | grep -i "ould not retrieve catal"`" ]
then
	puppetStatus="bad"
elif [ "`/usr/bin/sudo tail -n 5 /var/log/puppet/puppet.log | grep -i "failed"`" ]
then
	puppetStatus="bad"
elif [ "`/usr/bin/sudo tail -n 5 /var/log/puppet/puppet.log | grep -i "skip"`" ]
then	
	puppetStatus="bad"
fi
echo "$HOSTNAME puppet status is $puppetStatus"


# Tests we need to check
: <<'['
puppet
encode_control - process running (check for defunct)
rtsp_server - process running
input_stats - if it is working (test for a few seconds)
memory
cpu
number of cameras online
/var/log/messages (check for respawn)
check AMS json on log

[