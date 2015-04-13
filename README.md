java-oracle-role
================


Requirements
------------

- Ubuntu Server 14.04 LTS
- Ansible 1.5+


Role Variables
--------------

- java_version
- java_source_path  
  `/opt/sources`
- java_source_url
- java_source_file
- java_source_checksum  
  _sha256 of java source file_


Dependencies
------------

- qianka.ubuntu-common


Example Playbook
----------------

```yml
- hosts: all
  user: root
  vars:
    ubuntu_apt_mirror: http://mirrors.aliyun.com/ubuntu

  roles:
    - { role: qianka.java-oracle,
        java_version: jdk1.8.0_25,
        java_source_url: 'http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz',
        java_source_file: jdk-8u25-linux-x64.tar.gz,
        java_source_checksum: 057f660799be2307d2eefa694da9d3fce8e165807948f5bcaa04f72845d2f529
      }
```


License
-------


Author Information
------------------
