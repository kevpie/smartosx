nfsd update:
  cmd.run:
    - onchanges: 
       - file: /etc/exports

/etc/exports:
  file.managed:
    - source: salt://workstation/exports
    - user: root
    - group: wheel

/opt/thi/trunk:
  file.directory:
    - uid: 501
    - gid: 20
    - mode: 755

/opt/thi/shared:
  file.directory:
    - uid: 501
    - gid: 20
    - mode: 755
