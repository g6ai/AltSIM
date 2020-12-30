#!/usr/bin/env bash
TOKEN=<YOUR_TELEGRAM_BOT_TOKEN>
CHAT_ID=<YOUR_CHAT_ID>
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
NL=$'\n'
declare -i i MSGS
MSGS=${SMS_MESSAGES}
CONTENT="${SMS_1_NUMBER}${NL}"
i=1
while [ $i -le $MSGS ]; do
    declare "PART"="SMS_${i}_TEXT"
    CONTENT="${CONTENT}${!PART}"
    i=$(($i+1))
done
CONTENT=${CONTENT//&/%26}
CONTENT=${CONTENT//</%3C}
CONTENT=${CONTENT//>/%3E}
eval "curl -s -X POST $URL -d chat_id=$CHAT_ID -d text=\"${CONTENT}\""
