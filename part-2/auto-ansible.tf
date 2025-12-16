# resource "null_resource" "run_ansible" {

#   provisioner "local-exec" {
#     working_dir = "${path.module}"
#     command = <<EOT
# echo "[ec2]" > inventory.ini
# echo "${aws_instance.app.public_ip} ansible_user=ubuntu ansible_python_interpreter=/usr/bin/python3 ansible_ssh_private_key_file=/mnt/c/Users/Mosharib/.ssh/key_pair.pem ansible_ssh_common_args='-o StrictHostKeyChecking=no'" >> inventory.ini

# ansible-playbook -i inventory.ini playbook.yml
# EOT
#   }
# }
