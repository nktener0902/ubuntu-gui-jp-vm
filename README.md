# 日本語設定済みUbuntuのVMを作成する

* Ubuntu18.04
* GNOME
* Japanese

## How to use

```bash
ansible-galaxy install gantsign.keyboard
./bootstrap.sh
```

After provisioning, stop VM and attach a blank optic device to the VM.

Restart the VM and install "VirtualBox Guest Additions" by following commands in the created VM,.

```bash
# In the VM
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11
sudo reboot
```
