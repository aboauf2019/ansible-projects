ansible all -m user -a "name=admin state=present" --user root --become --become-user root --become-method sudo
ansible all -m copy -a "src=./admin dest=/etc/sudoers.d/" --user root --become --become-user root --become-method sudo
ansible-playbook import-key.yml --user root --become --become-user root --become-method sudo