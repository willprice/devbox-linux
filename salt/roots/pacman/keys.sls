{% set keys = salt['pillar.get']('pacman:keys', []) %}
pacman_keys:
  {% for key in keys -%}
  cmd.script:
    - source: salt://pacman/files/trust-key.sh
    - args: {{ key }}
  {% endfor -%}
