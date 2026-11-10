#!/usr/bin/env bash

echo "=== 07. TLS Handshake ==="

openssl s_client -connect google.com:443 -servername google.com

openssl s_client -connect google.com:443 -servername google.com </dev/null 2>/dev/null | openssl x509 -noout -subject -issuer -dates

openssl s_client -connect google.com:443 -servername google.com </dev/null 2>/dev/null | grep -E "Protocol|Cipher"
