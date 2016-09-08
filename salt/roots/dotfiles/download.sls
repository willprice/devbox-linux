include:
  - git.package

dotfiles_download:
   git.latest:
     - name: {{ salt['pillar.get']('dotfiles.origin', 'git@github.com:willprice/dotfiles.git') }}
     - target: {{ salt['user.info']('will').home }}/.dotfiles
     - user: will
     - require:
       - git_package
