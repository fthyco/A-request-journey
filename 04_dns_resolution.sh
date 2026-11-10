#!/usr/bin/env bash

echo "=== 04. DNS Resolution ==="

dig google.com A
dig google.com AAAA
dig google.com NS
dig google.com
dig @8.8.8.8 google.com
nslookup google.com
