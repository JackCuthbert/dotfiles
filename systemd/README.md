## Systemd Services

* Install user services to `~/.config/systemd/user/`
* Install system services to `/etc/systemd/system/`

### `system/i3lock.service`

A service to automatically lock the screen upon `systemctl suspend` with the `bin/linux/screen-lock` script.

1. Copy template to `/etc/systemd/system/i3lock.service` and edit
2. `sudo systemctl enable i3lock.service`

### `system/mnt-stuff.mount`

This is a template for mounting SMB shares with systemctl either on the fly (without editing `fstab`) or at boot. To install:

1. Copy template to `/etc/systemd/system/mnt-share-name.mount` and edit
2. `sudo systemctl enable mnt-share-name.mount`
3. `sudo systemctl start mnt-share-name.mount` (optional to mount now)

#### Dependencies:

`sudo pacman -S cifs-utils smbclient`

#### Configuration

Credentials are stored in the file `/etc/samba/credentials/share` with the following permissions:

```
Permissions User Group Name
drwx------  root root  /etc/samba/credentials
.rw-------  root root  /etc/samba/credentials/share
```

File contents:

```
username=share_username
password=share_password
```

