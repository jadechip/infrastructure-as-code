# infrastructure-as-code

Companion code to [A CI/CD solution in under 10 minutes, using Terraform & Ansible on GCP](https://medium.com/google-cloud/a-ci-cd-solution-in-under-10-minutes-featuring-terraform-ansible-and-drone-ci-on-gcp-16bba497c655)

[<img src="https://cdn-images-1.medium.com/max/600/1*VwcyIZ3x7tlrtME9QSjv1A.jpeg">](https://medium.com/google-cloud/a-ci-cd-solution-in-under-10-minutes-featuring-terraform-ansible-and-drone-ci-on-gcp-16bba497c655)

## Steps


### Prereqs

* Ansible and Terraform installed on your machine.
* A registered OAuth application on Github.
* A pair of SSH keys.

### Terraform

First off, hop over to the Terraform directory.
```
cd terraform/
```
Run the `init.sh` script to initialize the required values.
```
chmod +x init.sh
./init.sh
```

Begin Terraforming!
```
terraform init
```
```
terraform plan
```
```
terraform apply
```
Store the ip address of the newly created compute instance in a variable, we will be using it shortly.
```
export VM_IP=$(terraform output ip)
```

### Ansible

Add the following line to Ansible's inventory, either `/etc/ansible/hosts` or a custom file. Be sure to pass in the newly minted IP address and your SSH private key.
```
droneci ansible_host=[IP] ansible_ssh_private_key_file=[SSH_PATH]
```

Switch over to the Ansible directory.
```
cd ansible/
```
Run the `init.sh` script to initialize the required values.
```
chmod +x init.sh
. ./init.sh
```
Check that Ansible can connect to your VM.
```
ansible droneci -m ping
```
Run the playbooks!
```
ansible-playbook playbooks/main.yaml
```




