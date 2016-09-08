powerline_fonts_install:
  cmd.run:
    - name: ./install.sh
    - cwd: {{ salt['user.info']('will').home }}/.fonts/powerline
    - runas: will
