#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6467effd-92bb-45b6-8bc4-3861c7d5a252"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

