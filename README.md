# ansible-playbooks
Ansible Playbooks

## Setting up Arch Linux after a fresh install
```
cd ansible-playbooks
ansible-playbook playbooks/archlinux_setup.yml -kK --ask-vault-pass
```

## Updating all packages with yay
```
cd ansible-playbooks
ANSIBLE_STDOUT_CALLBACK=debug ansible-playbook playbooks/archlinux_update.yml -kK --tags yay
```
