brew-cask:
  pkg:
    - installed
{% for cask in ['vmware-fusion6', 'packer', 'pycharm', 'phpstorm'] %}
{{cask}}:
  cmd.run:
    - uid: 501
    - gid: 20
    - name: 'brew cask install {{cask}}'
    - unless: 'brew cask list {{cask}}'
{% endfor %}

