{% for user, config in salt['pillar.get']('git:configs', {}).iteritems() %}
git_user_config_{{ user }}:
  git.config_set:
    - user: {{ user }}
    - global: True
    - names:
{% for key, value in config %}
      - {{ key }}:
        - value: {{ value }}
{% endfor -%}
{% endfor -%}
