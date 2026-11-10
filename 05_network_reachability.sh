#!/usr/bin/env bash

echo "=== 05. Network Reachability ==="

ping -c 4 google.com
ping -c 4 142.251.209.78
traceroute google.com
