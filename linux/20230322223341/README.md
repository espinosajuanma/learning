# Mount an USB drive/disk

Run `lsblk` to list the "block" devices

The result can be something like this:

```
NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0         7:0    0  49.1M  1 loop /snap/core18/2717
loop2         7:2    0  59.1M  1 loop /snap/core20/1832
loop3         7:3    0 137.3M  1 loop /snap/lxd/24487
loop4         7:4    0  43.2M  1 loop /snap/snapd/18363
loop5         7:5    0  43.2M  1 loop /snap/snapd/18600
loop6         7:6    0  59.1M  1 loop /snap/core20/1856
loop7         7:7    0   6.2M  1 loop /snap/ngrok/91
loop8         7:8    0  67.5M  1 loop /snap/core22/548
loop9         7:9    0   155M  1 loop /snap/lxd/24646
sda           8:0    0   1.8T  0 disk 
└─sda1        8:1    0   1.8T  0 part /home/rebel-scum/disk
mmcblk0     179:0    0 119.1G  0 disk 
├─mmcblk0p1 179:1    0   256M  0 part /boot/firmware
└─mmcblk0p2 179:2    0 118.8G  0 part 
```

My disk was the `sda1` so I did:

```bash
mkdir $HOME/disk
sudo mount /dev/sda1 $HOME/disk
```
