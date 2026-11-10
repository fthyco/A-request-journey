#!/usr/bin/env bash

echo "=== 06. TCP Connection ==="

nc -vz google.com 443
nc -vz google.com 80
ss -tn
sudo ss -tulpn
