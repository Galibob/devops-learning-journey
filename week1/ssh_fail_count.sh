LOG_FILE="/var/log/auth.log"
echo "Failed SSH login attempts in the last 24 hours :"
grep "Failed password  " $LOG_FILE | grep "$(date '+%b %d')" | wc -l
# grep "Failed password" $LOG_FILE | awk '{ print $(NF-3) }' | sort | uniq -c | sort -nr | head
