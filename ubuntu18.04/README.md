
* Ubuntu18.04
* GNOME
* Japanese

```bash
ansible-galaxy install robertdebock.gnome
ansible-galaxy install gantsign.keyboard
```

After provisioning, stop VM and create blank optic device in VirtualBox properties.
By following commands, install VirtualBox Guest Additions.

```bash
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11
sudo reboot
```
