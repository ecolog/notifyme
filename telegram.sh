#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 [message]"
fi

apiKey="BotFather_apiKey"
chatId="group_chat_id" # look for "chat":{"id" in the result of: curl -X POST "https://api.telegram.org/bot${apiKey}/getUpdates"
message="$1"

curl -X POST "https://api.telegram.org/bot${apiKey}/sendMessage" -d "chat_id=${chatId}&text=${message}"
