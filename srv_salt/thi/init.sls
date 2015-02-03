

install-packages:
  pkg.installed:
    - names:
      - ruby193
      - git-base
      - build-essential

bundler:
  gem.installed

thi:
  user.present:
    - home: /opt/thi
    - uid: 501
    - gid: 20

