chrony_config:
  file.managed:
    - name: /etc/chrony.conf
    - source: salt://chrony/templates/chrony.conf.j2
