#!/bin/bash

cd /home/vvdn/

git clone https://github.com/sumitvvdn/Training.git

if [ -e code.zip ]
then 
	rm -r code.zip
	zip -r code.zip Training 
else
	zip -r code.zip Trainng
fi
scp -i /home/vvdn/Downloads/keypair.pem /home/vvdn/code.zip ec2-user@34.230.42.33:~

ssh -i /home/vvdn/Downloads/keypair.pem ec2-user@34.230.42.33 'bash -s' << EOF

if [ -d Training ]
then
	rm -r Training
	unzip -o code.zip
else
	unzip -o code.zip
fi

exit

EOF
