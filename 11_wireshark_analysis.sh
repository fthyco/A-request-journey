#!/usr/bin/env bash

echo "=== 11. Wireshark Analysis ==="

cat <<'EOF'
Display filters for reference:
dns
tcp
tcp.flags.syn == 1
tls
http
ip.addr == 142.251.209.78
EOF

wireshark google_traffic.pcap
