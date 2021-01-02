# ansible-playbooks
Ansible Playbooks

## Setting up Arch Linux after a fresh install
```
ansible-playbook -l <hostname> -kK --ask-vault-pass playbooks/archlinux_setup.yml
```

## Updating the system with yay
```
ansible-playbook -l <hostname> -kK --tags yay playbooks/archlinux_update.yml
```
