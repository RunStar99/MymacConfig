/usr/sbin/balethirq.pl
/etc/init.d/AdGuardHome start
sleep 60 && rclone mount gdrive: /mnt/mmcblk2p4/gdrive \
--umask 0000 \
--default-permissions \
--no-check-certificate \
--allow-non-empty \
--allow-other \
--vfs-cache-mode writes \
--vfs-read-chunk-size 32M \
--vfs-read-chunk-size-limit 256M \
--buffer-size 128M \
--use-mmap \
--daemon &
 rclone mount gdrive2: /mnt/mmcblk1p3/docker/emby/share2 \
--umask 0000 \
--default-permissions \
--no-check-certificate \
--allow-non-empty \
--allow-other \
--vfs-cache-mode writes \
--vfs-read-chunk-size 32M \
--vfs-read-chunk-size-limit 256M \
--buffer-size 128M \
--use-mmap \
--daemon &

exit 0
