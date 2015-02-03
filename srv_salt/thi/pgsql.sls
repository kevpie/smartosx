
postgresql93:
  pkg.installed

/var/pgsql/data/pg_hba.conf:
  file.managed:
    - source: salt://thi/pg_hba.conf

postgresql:
  service.running:
    - enables: True

skytools:
  pkg.installed

thi:
  postgres_user.present:
    - superuser: True
    - createdb: True
    - createroles: True
