dotfiles:
  origin: 'git@github.com:willprice/dotfiles.git'
  user:
    name: will
  home: /home/${user:name}
  path: ${home}/.dotfiles
  dotfiles:
    - top
