#!/usr/bin/env bash

echo "=== 09. HTTP Protocol Inspection ==="

curl -I --http1.1 https://google.com

curl -I --http2 https://google.com

curl -I --http3 https://google.com

curl -v https://google.com -o /dev/null
