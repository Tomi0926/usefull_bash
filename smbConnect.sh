apt install cifs-utils -y
mkdir /media/share
echo "username=tomi password=Kecske123" > /root/.smbcreds
chmod 400 /root/.smbcreds
echo "//10.0.0.5/HDD /media/share cifs vers=3.0,credentials=/root/.smbcreds" | sudo tee -a /etc/fstab
mount -a
