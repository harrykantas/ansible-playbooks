# ansible-playbooks
Ansible Playbooks

## Setting up Arch Linux after a fresh install
```
ansible-playbook playbooks/archlinux_setup.yml -kK --ask-vault-pass
```

## Updating all packages with yay
```
ANSIBLE_STDOUT_CALLBACK=debug ansible-playbook playbooks/archlinux_update.yml -kK --tags yay
```
