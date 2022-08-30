ansible all -m user -a "name=admin state=present append=yes groups=wheel" --user root --become --become-user root --become-method sudo
ansible all -m copy -a "src=./admin dest=/etc/sudoers.d/" --user root --become --become-user root --become-method sudo
ansible all -m copy -a "content='ansible ALL=(ALL) NOPASSWD:ALL' dest=/etc/sudoers.d/ansible mode=400 owner=root" --user root --become --become-user root --become-method sudo
# ansible-playbook import-key.yml --user root --become --become-user root --become-method sudo