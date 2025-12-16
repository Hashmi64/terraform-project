cd /mnt/c/Users/Mosharib/Desktop/
mv /mnt/c/Users/Mosharib/Desktop/key_pair.pem /mnt/c/Users/Mosharib/.ssh/
ls -l /mnt/c/Users/Mosharib/.ssh/
chmod 400 /mnt/c/Users/Mosharib/.ssh/key_pair.pem

Wsl shutdown: Powershell


Example (agar .ssh me ho): cd /mnt/c/Users/Mosharib/.ssh
ssh -i /mnt/c/Users/Mosharib/.ssh/key_pair.pem ubuntu@13.201.102.143

Example (agar Desktop me ho): cd /mnt/c/Users/Mosharib/Desktop/
ssh -i /mnt/c/Users/Mosharib/Desktop/key_pair.pem ubuntu@13.201.102.143

For Manual run after terraform created EC2 Instance then we can run ansbile after updating the IP in Inventory.ini
inventory.ini
[ec2]
<public-ip> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/key_pair.pem

[ec2]
<public-ip> ansible_user=ubuntu ansible_ssh_private_key_file=/mnt/c/Users/Mosharib/.ssh/key_pair.pem ansible_python_interpreter=/usr/bin/python3 ansible_ssh_common_args='-o StrictHostKeyChecking=no'


chmod 600 /mnt/c/Users/Mosharib/.ssh/key_pair.pem

ansible-playbook -i inventory.ini playbook.yml

node -v
npm -v
python3 -V
pip3 --version
git --version
curl --version

cd /mnt/c/Users/Mosharib/Desktop/aws
chmod 400 /mnt/c/Users/Mosharib/.ssh/key_pair.pem
scp -i /mnt/c/Users/Mosharib/.ssh/key_pair.pem -r backend ubuntu@13.201.102.143:/home/ubuntu/
scp -i /mnt/c/Users/Mosharib/.ssh/key_pair.pem -r frontend ubuntu@13.201.102.143:/home/ubuntu/


backend: sudo apt update -y
sudo apt install python3 python3-pip -y
pip3 install -r requirements.txt : agar error aaya to niche 2 install kero fir run kero
sudo apt install python3-venv -y
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py
nohup python3 app.py > backend.log 2>&1 &  : background running

paste the server IP under frontend code then copy to server.

don't copy node modules from frontend folder to server, before copying delete node modules then use scp once copying then got to frontend in server and install : 
npm install
npm start
nohup node server.js > frontend.log 2>&1 &

