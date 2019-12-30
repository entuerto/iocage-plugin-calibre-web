# iocage-plugin-calibre-web
calibre-web FreeNAS plugin

## Add mount points

mkdir /mnt/archive/iocage/jails/jail_name/root/mnt/books

iocage fstab -a jail_name /mnt/archive/iocage/jails/jail_name/root/mnt/books /mnt/archive/media/books nullfs rw 0 0
