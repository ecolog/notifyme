#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 [message]"
fi

apiKey="to_be_added"
phone="to_be_added"
message="$1"

message="======  <MESSAGE TAG>  ======
${message}"

/usr/bin/curl -G -v "https://platform.clickatell.com/messages/http/send" \
    --data-urlencode "apiKey=${apiKey}" \
    --data-urlencode "to=${phone}" \
    --data-urlencode "content=${message}"
