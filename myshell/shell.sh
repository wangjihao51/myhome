#!/bin/bash
touch /root/shell/$1.sh
echo "#!/bin/bash"> /root/shell/$1.sh
chmod +x /root/shell/$1.sh
vim /root/shell/$1.sh
