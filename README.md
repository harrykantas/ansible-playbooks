# ansible-playbooks
Ansible Playbooks

## Set up Arch Linux after a fresh install
```
ansible-playbook [-l <hostname>] -kK --ask-vault-pass playbooks/archlinux_setup.yml
```

## Update the system(s) with yay
```
ansible-playbook [-l <hostname>] -kK --tags yay playbooks/archlinux_update.yml
```

## Backup SSH configs to a local SMB share
```
ansible-playbook -l <hostname> -kK --tags backup playbooks/backup.yml
```