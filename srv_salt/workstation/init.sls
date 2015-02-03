brew-cask:
  pkg:
    - installed
{% for cask in ['vmware-fusion6', 'packer', 'pycharm', 'phpstorm', 'hipchat', 'google-chrome'] %}
{{cask}}:
  cmd.run:
    - uid: 501
    - gid: 20
    - name: 'brew cask install --appdir=/Applications {{cask}}'
    - unless: 'brew cask list {{cask}}'
{% endfor %}

