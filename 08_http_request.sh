#!/usr/bin/env bash

echo "=== 08. HTTP Request ==="

curl -v https://google.com

curl -I https://google.com

curl -i https://google.com

curl -s -o /dev/null -w "%{http_code}\n" https://google.com

curl -s -o /dev/null -w '
DNS Lookup:       %{time_namelookup}s
TCP Connection:   %{time_connect}s
TLS Handshake:    %{time_appconnect}s
First Byte:       %{time_starttransfer}s
Total Time:       %{time_total}s
' https://google.com
