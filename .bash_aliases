alias dps='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Command}}\t{{.RunningFor}}\t{{.Status}}"'
alias dfx='df -h -x fuse.mergerfs'
alias cpv='rsync -ah --info=progress2'
alias delv='rsync -av --delete /opt/blank/'
alias shortcut='nano ~/.bash_aliases; source ~/.bashrc'
alias rinfo="ps ww $(pidof rclone)  | sed -e $'s/ *[^ ]* /\033[1;33m&\033[0m/'"
alias cpu5="uptime | sed 's,.*,\x1B[35m&\x1B[0m,';ps -eo user,pid,%cpu,%mem,cmd --sort=-%cpu | head -5  | sed -e $'s/ *[^ ]* /\033[1;33m&\033[0m/3'"

#zenlocal-specific
alias zenstall='wget -O - https://raw.githubusercontent.com/CoffeeKnyte/local-remote/main/run.sh | sudo bash'
alias pollerlog='tail -f /opt/scripts/zenlocal/logs/poller.log'
alias copyover='/opt/scripts/coffeebase/copy_over.sh'
alias resett='/opt/scripts/coffeebase/reset.sh'
alias boott='/opt/scripts/coffeebase/boott.sh'
alias backup2='/opt/scripts/coffeebase/backup2.sh'
alias backup3='/opt/scripts/coffeebase/backup3.sh'
alias remountt='/opt/scripts/coffeebase/remount.sh'
alias pac='/opt/pac/run_pac.sh'
alias paslog='tail -f /opt/plex_autoscan/plex_autoscan.log'
alias scanlog='tail -f /opt/autoscan/activity.log'
alias asdblist='sqlite3 /opt/autoscan/autoscan.db "SELECT * FROM scan"'
alias asdbcount='sqlite3 /opt/autoscan/autoscan.db "SELECT count(*) FROM scan"'
alias plexmatch='python3 /opt/scripts/scanfolder/plex_match_fixer.py'
alias plexstats='/opt/scripts/coffeebase/plex_stats.sh'
