#!/bin/bash

# install packages
apt-get update && apt-get install vim screen vnstat rdate ssh less

# add rdate crontab
cat >> /etc/crontab <<EOF
# rdate
0 0     * * *   root    /usr/bin/rdate time.fu-berlin.de > /dev/null 2> /var/log/rdate.log
EOF

