# ansible-playbooks
Ansible Playbooks

## Setting up Arch Linux after a clean install
```
mkdir $HOME/Projects
cd $HOME/Projects
git clone https://github.com/harrykantas/ansible-playbooks
cd ansible-playbooks
ansible-playbook playbooks/archlinux_setup.yml -kK --ask-vault-pass
```