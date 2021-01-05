# ansible-playbooks
Ansible Playbooks

## Set up Arch Linux after a fresh install
```
ansible-playbook [-l <hostname>] -kK --ask-vault-pass playbooks/archlinux_setup.yml
```

## Update the system(s) with pacman and yay
```
ansible-playbook -kK playbooks/archlinux_update.yml --tags update_packages
```

## Backup SSH configs to a local SMB share
```
ansible-playbook -l <hostname> -kK playbooks/backup.yml --tags backup
```