#!/bin/bash
echo -e "\e[1;36m--- SYSTEM MONITOR ---\e[0m"
echo -e "\e[1;32m[RAM]\e[0m"
free -h | grep "Mem" | awk '{print "Used: " $3 " / Total: " $2}'
echo -e "\n\e[1;33m[STORAGE]\e[0m"
df -h / | grep "/" | awk '{print "Free Space: " $4}'
echo -e "\n\e[1;35m[BATT]\e[0m"
termux-battery-status | grep -E "percentage|status" || echo "Termux-api not installed"
echo -e "\e[1;36m----------------------\e[0m"
