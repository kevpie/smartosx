# add entries to /etc/hosts file
salt-master:
  host.present:
    - ip: 172.16.109.1
    - name: salt.local

gz.local:
  host.present:
    - ip: 172.16.109.99