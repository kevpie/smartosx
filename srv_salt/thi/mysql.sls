

mysql-server:
  pkg.installed:
    - version: 5.5.39
  service.running:
    - name: mysql
    - enable: True

/opt/local/etc/my.cnf:
  file.managed:
    - source: salt://thi/my.cnf


