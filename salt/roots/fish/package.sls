fish_package:
  pkg.installed:
    - name: fish

omf_package:
  cmd.script:
    - source: http://get.oh-my.fish
    - shell: /usr/bin/fish
    - creates: {{ salt['user.info']('will').home }}/.local/share/omf
    - runas: will
