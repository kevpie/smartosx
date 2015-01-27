/opt/thi:
  file.directory:
    - uid: 501
    - gid: 20
    - mode: 755

{% if grains['os'] != 'MacOS' %}
thi:
  user.present:
    - shell: /bin/bash
    - uid: 501
    - gid: 20
    - home: /opt/thi
{% endif %}
