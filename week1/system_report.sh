#!/bin/bash
echo "====== System repport======"
echo "Date :   $(date)"
echo "Hostname :  $(hostname)"
echo "Uptime : $(uptime  -p)"
echo "Loggedin users:"
who 
echo "Memory usage "
free -m
echo "Disk Usage "
df -h
