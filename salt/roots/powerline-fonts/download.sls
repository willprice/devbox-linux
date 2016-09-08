powerline_fonts_download:
  git.latest:
    - name: https://github.com/powerline/fonts.git
    - target: {{ salt['user.info']('will').home }}/.fonts/powerline
    - user: will

