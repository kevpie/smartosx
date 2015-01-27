brew-cask:
  pkg:
    - installed
{% for cask in ['vmware-fusion6','packer'] %}
{{cask}}:
  cmd.run:
    - name: 'brew cask install {{cask}}'
    - unless: 'brew cask list {{cask}}'
{% endfor %}

