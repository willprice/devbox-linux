tlp_config:
  file.managed:
    - name: /etc/default/tlp
    - source: salt:://tlp/templates/tlp.j2
