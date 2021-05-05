# Ubuntu VM作成スクリプト

作成されるVMの内容は以下のとおりです。

* VirtualBox VM
* ゲストOS: Ubuntu18.04
* GUI: GNOME
* 日本語設定済み

## 前提

* ansible
* vagrant
* VirtualBox

## 使い方

```bash
./bootstrap.sh
```

VirtualBoxで画面サイズを動的に拡張できるようにするためには、以下の作業が必要です。

1. プロビジョニング完了後、VMを停止する
2. VirtualBoxの設定から作成されたVMに空の光学ドライブを作成し取り付ける
3. VMを再度起動する
4. VirtualBoxのメニューの「Device」->「Insert Guest Additions CD image」
5. ゲストOS内で、以下のコマンドを入力する

```bash
# In the VM
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11
sudo reboot
```
