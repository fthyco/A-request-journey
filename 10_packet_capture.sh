#!/usr/bin/env bash

echo "=== 10. Packet Capture ==="

sudo tcpdump -D

sudo tcpdump -i any -nn 'host 142.251.209.78'

sudo tcpdump -i any -nn 'host 142.251.209.78 and tcp port 443'

sudo tcpdump -i any -nn 'host 142.251.209.78 and tcp[tcpflags] & (tcp-syn|tcp-ack) != 0'

sudo tcpdump -i any -nn 'host 142.251.209.78' -w google_traffic.pcap
