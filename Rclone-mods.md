1. Download latest release of rclone_gclone from 
https://github.com/l3uddz/rclone/releases

2. Unzip/untar then move/rename it to rclone
`mv rclone_gclone /usr/bin/rclone`

3. edit rclone_vfs.service
`nano /etc/systemd/system/rclone_vfs.service`

then add a few lines as listed below
```
/usr/bin/rclone mount \
  --user-agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36' \
  --config=/home/user/.config/rclone/rclone.conf \
  --allow-other \
  --allow-non-empty \
  --rc \
  --rc-addr=localhost:5572 \
  --drive-skip-gdocs \
  --buffer-size=32M \
  --vfs-read-ahead=128M \
  --no-checksum \                 #Add from this line
  --vfs-read-chunk-size=32M \
  --vfs-read-chunk-size-limit=2G \
  --vfs-cache-mode=full \
  --vfs-cache-max-age=24h \
  --vfs-cache-max-size=100G \     
  --tps-limit=10 \                #until this line
  --poll-interval=1m \
  --dir-cache-time=168h \
  --timeout=10m \
  --drive-chunk-size=64M \
  --umask=002 \
  -syslog \
  -v \
```

