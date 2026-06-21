# Pi-hole Watchdog
A simple Bash script that monitors a Docker container 
(Pi-hole) and automatically restarts it if it goes down. 
Runs every 5 minutes via cron.
## How it works
- Checks if the container is running using `docker ps` - 
If down, attempts to restart it and logs the result - 
Logs all checks with timestamps to `pihole.log`
## Setup
1. Update `CONTAINER_NAME` in the script 2. Make it 
executable: `chmod +x piholeMonitor.sh` 3. Add to crontab 
to run every 5 min:
   `*/5 * * * * /path/to/piholeMonitor.sh`
