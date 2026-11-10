#!/usr/bin/env bash

echo "=== 12. Complete Request Execution ==="

curl -v \
  --trace-time \
  --trace-ascii curl_trace.txt \
  -w '\n
HTTP Status:       %{http_code}
Remote IP:         %{remote_ip}
Local IP:          %{local_ip}
Remote Port:       %{remote_port}
Local Port:        %{local_port}
DNS Time:          %{time_namelookup}s
TCP Time:          %{time_connect}s
TLS Time:          %{time_appconnect}s
First Byte:        %{time_starttransfer}s
Total Time:        %{time_total}s
HTTP Version:      %{http_version}
' \
  -o /dev/null \
  https://google.com

cat curl_trace.txt
