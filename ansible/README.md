# Ansible simple automation

### Instalar

```
$ sudo apt install ansible
$ ansible --version
```

### Correr un `playbook.yml`

> Para esto usaremos [vagrant](../vagrant), para más información [aquí](https://www.vagrantup.com/docs/provisioning/ansible_intro)

Agregar al archivo `Vagrantfile`:

```
config.vm.provision "ansible" do |ansible|
  ansible.verbose = "v"
  ansible.playbook = "playbook.yml"
end
```

Crear el archivo `playbook.yml` con lo siguiente:

```
- name: This is a hello-world example
  hosts: default
  tasks:
    - name: Create a file called '/tmp/testfile.txt' with the content 'hello world'.
      copy:
        content: hello world
        dest: /tmp/testfile.txt
```

Luego para verificar:

```
$ vagrant up
$ vagrant ssh
$ cat /tmp/testfile.txt
```

> Nótese el host `default`, esta configuración es generada automáticamente por vagrant
> en la ruta: `.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory`

### Otros comandos

Correr un playbook (pasando la configuración de host):

```
$ ansible-playbook -i hosts playbook.yml
```

> Previamente se deben crear los archivos [hosts](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) y [playbook](https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html).
