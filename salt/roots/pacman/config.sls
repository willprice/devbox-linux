include:
  - .keys

pacman_conf:
  file.managed:
    - name: /etc/pacman.conf
    - source: salt://pacman/templates/pacman.conf.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - pacman_keys
