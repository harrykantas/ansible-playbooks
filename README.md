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


### Roles included:
- **acpid** (with custom rules)
- **upowerd** (custom config)
- **backup** (backup/restore ssh config using a local SMB share)
- **dotfiles** (via another github repo)
- **flexo** (client or server)
- **gnome** (with GDM and NetworkManager)
- **grub** (with custom kernel params)
- **kernel** (with custom modules config)
- **nextdns** (client or server)
- **pacman** (and yay)
- **setup** (package install and custom system config)

### Tasks **not** included: 
 - boot loader installation
 - user creation
 - locale.{gen,conf} configuration
 - /etc/{hostname,hosts} configuration
 