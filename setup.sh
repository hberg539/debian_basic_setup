#!/bin/bash

# install packages
apt-get update && apt-get install vim screen vnstat rdate ssh less

# add rdate crontab
cat >> /etc/crontab <<EOF
# rdate
0 0     * * *   root    /usr/bin/rdate -s time.fu-berlin.de
EOF

