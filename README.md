# ansible-playbooks
Ansible Playbooks

## Set up Arch Linux after a fresh install
```
ansible-playbook [-l <hostname>] -kK --ask-vault-pass playbooks/archlinux_setup.yml
```

## Update the system(s) with pacman
```
ansible-playbook -kK playbooks/archlinux_update.yml --tags update_packages
```

## Backup SSH configs to a local SMB share
```
ansible-playbook -l <hostname> -kK playbooks/backup.yml --tags backup
```


### Roles included:
- **acpid** (with custom rules)
- **backup** (backup/restore ssh config using a local SMB share)
- **dotfiles** (via another github repo)
- **flexo** (client or server)
- **gnome** (with GDM and NetworkManager)
- **git** (with global config)
- **grub** (with custom kernel params)
- **kernel** (with custom modules config)
- **nextdns** (client and server)
- **pacman** (and yay)
- **setup** (package install and custom system config)
- **upowerd** (custom config)
- **wireguard** (configured as a VPN)

### Setup tasks **not** included: 
 - boot loader installation
 - user creation
 - locale.{gen,conf} configuration
 - /etc/{hostname,hosts} configuration
 