kmscon_conf:
  file.managed:
    - name: /etc/kmscon/kmscon.conf
    - source: salt://kmscon/templates/kmscon.conf.j2
    - template: jinja
