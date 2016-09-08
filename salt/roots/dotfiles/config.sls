include:
  - .package
  - .download

{% for dotfile in salt['pillar.get']('dotfiles:dotfiles', ['top']) -%}
dotfiles_config_{{ dotfile }}:
  cmd.run:
    - name: stow --restow --target "{{ salt['pillar.get']('dotfiles.home') }}" "{{ dotfile }}"
    - cwd: {{ salt['pillar.get']('dotfiles.path') }}
    - runas: {{ salt['pillar.get']('dotfiles.user.name') }}
    - require:
      - dotfiles_download
      - stow_package
{% endfor -%}
