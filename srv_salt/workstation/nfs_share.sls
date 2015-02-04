nfsd update:
  cmd.run:
    - onchanges: 
       - file: /etc/exports

/etc/exports:
  file.managed:
    - source: salt://workstation/exports
    - user: root
    - group: wheel

create-treadmill-folders:
  file.directory:
    - user: kevin
    - group: staff
    - mode: 755
    - names:
       - /opt/thi/treadmill
       - /opt/thi/treadmill/current
       - /opt/thi/treadmill/shared
#       - /opt/thi/treadmill/shared/log
