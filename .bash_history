cd express_worker/
ls
cd
cd e
cd express_worker/
cd 
cd
cd express_worker/
ls
pwd
vim app.js 
ls
cd express_worker/
ls
vim startup.sh 
ls
cd
ls
rm npm-debug.log 
ls
cd express_worker/
ls
cd ..
cd
ls
vim bootUp.sh
ls
pwd
sudo crontab -e
pwd
ls
vim bootUp.sh
cd express_worker/
ls
vim startup.sh 
sudo reboot
ls
cd express_worker/
ls
vim app.js 
ls
cd 
ls
cd express_worker/
ls
vim app.js 
ls
sudo reboot
cd express_worker/
vim app.js 
npm start
ls
cd
ls
cd express_worker/
ls
vim app.js 
cd
clear
ls
pwd
mv /home/projectcloudbristol/app.js /home/projectcloudbristol/express_worker/app.js
cd express_worker/
ls
vim app.js 
npm start
vim aa
vim app.js 
rm .app.js.swp
rm .app.js.swo
ls
clear
npm start
ls
cd
ls
cd express_worker/
ls
npm start
vim app.js 
rm .aa.swp 
rm .app.js.swp 
vim app.js 
npm start
ls
cd
cd express_worker/
ls
cd
ls
cd test_worker/
ls
vim app.js
ls
cd
cd express_worker/
ls
vim package.json 
cd
ls
cd test_worker/
ls
vim app.js 
node app.js
ls
vim test.json 
ls
cd test_worker/
ls
vim command.json 
sudo reboot
sudo -i
ls
vim bootUp.sh 
ls
vim bootUp.sh 
ls
vim bootUp.sh 
ls
./internalip > ip.text
ls
nanao i
./internalip > ip.txt
ls
vim ip.txt
rm ip.text 
./internalip >> ip.txt
ls
vim ip.txt 
./internalip > ip.txt
ls
vim ip.txt 
./home/projectcloudbristol/internalip 
/home/projectcloudbristol/internalip 
/home/projectcloudbristol/internalip > ip.txt 
ls
rm ip.txt 
ls
vim bootUp.sh 
ls
rm .bootUp.sh.swp 
ls
vim bootUp.sh 
sudo reboot
exit
ls
vim percentage.py 
pwd
vim percentage.py 
vim ~/.vimrc
ls
rm ip.txt 
sudo reboot
ls
cd test_worker/
ls
sudo node app.js 
vim package.json 
vim app.js 
uptime
ls
cd test_worker/
ls
rm express_worker.zip 
ls
vim app.js 
ls
cd test_worker/
ls
vim app.js 
sudo pm2 stop all
node app.js 
vim app.js 
sudo node app.js 
vim app.js 
sudo node app.js 
vim app.js 
sudo node app.js 
vim app.js 
exit
sudo gcloud compute instance-groups managed resize instance-group-worker-v4 --size 0 --zone europe-west1-c
sudo shutdown -h now
ls
cd test_worker/
ls
vim app.js 
sudo pm2 stop all
sudo node app.js 
ls
sudo node app.js 
vim app.js 
sudo node app.js 
vim app.js 
sudo node app.js 
vim app.js 
ls
cd
ls
vim bootUp.sh 
vim percentage.py 
ls
cd test_worker/
ls
vim app.js 
sudo node app.js 
vim app.js 
sudo node app.js 
vim app.js 
ls
cd
ls
pwd
cd test_worker/
ls
vim app.js 
exit
cd test_worker/
ls
vim ip.txt 
vim command.json 
sudo blender -b  /mnt/blender_bucket/render.blend -E BLENDER_RENDER -F EXR -o /mnt/blender_bucket/output/frame_##### -s 187 -e 192 --python /home/projectcloudbristol/percentage.py -a
ls
vim ip.txt 
vim app.js 
ls
cd
ls
pwd
ls
rm percentage.py 
mv percentage_\(1\).py percentage.py
ls
sudo blender -b  /mnt/blender_bucket/render.blend -E BLENDER_RENDER -F EXR -o /mnt/blender_bucket/output/frame_##### -s 187 -e 192 --python /home/projectcloudbristol/percentage.py -a
sudo shutdown -h now
cd test_worker/
ls
vim app.js 
sudo pm2 stop all
sudo node app.js 
ls
vim errorFromManager.json 
vim app.js 
sudo node app.js 
ls
exit
sudo shutdown -h now
exit
ssh blender-manager@10.132.0.2
gcloud compute --project "corded-keel-151213" ssh --zone "europe-west1-c" "blender-manager"
sudo gcloud compute --project "corded-keel-151213" ssh --zone "europe-west1-c" "blender-manager"
sudo gcloud compute ssh blender-manager
gcloud compute ssh blender-manager
ls
gcloud compute ssh blender-manager
sudo gcloud compute ssh blender-manager
sudo shutdown -h now
ERROR: (gcloud.compute.ssh) [/usr/bin/ssh] exited with return code [255]
gcloud compute --project "corded-keel-151213" ssh --zone "europe-west1-c" "blender-manager"
ssh-keygen -t rsa -f ~/.ssh/my-ssh-key -C [USERNAME]
ssh-keygen -t rsa -f ~/.ssh/my-ssh-key -C blender-worker1
chmod 400 ~/.ssh/my-ssh-key
cat ~/.ssh/my-ssh-key.pub
ssh -i ~/.ssh/my-ssh-key blender-manager@104.199.94.139 
ssh -i ~/.ssh/my-ssh-key blender-worker1@104.199.103.51
ssh-keygen -t rsa -f ~/.ssh/my-ssh-key -C blender-manager
sudo ssh-keygen -t rsa -f ~/.ssh/my-ssh-key -C blender-manager
ls
chmod 400 ~/.ssh/my-ssh-key
cat ~/.ssh/my-ssh-key.pub
ssh -i ~/.ssh/my-ssh-key blender-manager@104.199.94.139 
ssh -i ~/.ssh/my-ssh-key blender-worker1@104.199.103.51
ssh -i ~/.ssh/my-ssh-key blender-manager@104.199.94.139
sudo ssh -i ~/.ssh/my-ssh-key blender-manager@104.199.94.139
sudossh -i ~/.ssh/my-ssh-key blender-worker1@104.199.103.51
sudo ssh -i ~/.ssh/my-ssh-key blender-worker1@104.199.103.51
gcloud compute --project "corded-keel-151213" ssh --zone "europe-west1-c" "blender-manager"
gcloud compute instances add-metadata example-instance \
gcloud compute instances add-metadata blender-manager --metadata startup-script=sudo rm /tmp/*
gcloud compute instances add-metadata blender-manager --metadata startup-script='sudo rm /tmp/*'
ls
gcloud compute instances add-metadata blender-manager --metadata startup-script='#! /bin/bash
    # Installs apache and a custom homepage
    sudo rm /tmp/*
    EOF'
vim fix_manager
gcloud compute instances add-metadata blender-manager --metadata-from-file startup-script=fix_manager
vim fix_manager 
ls /dev/disk/by-id
sudo mkdir -p /mnt/disks/worker
sudo mount -o discard,defaults /dev/disk/by-id/google-scsi-0Google_PersistentDisk_blender-worker1-part1 /mnt/disks/worker
sudo mount -o discard,defaults /dev/disk/by-id/google-blender-worker1-part1 /mnt/disks/worker
sudo chmod a+w /mnt/disks/worker
ls
cd /mnt/disks/worker/
ls
cd home/
ls
cd projectcloudbristol/
ls
cd ..
ls
exit
ls /dev/disk/by-id
exit
sudo shutdown -h now
