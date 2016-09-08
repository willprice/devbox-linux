python-packages:
  pkg.installed:
    - names:
      {% for version in ['', '2'] -%}
      - python{{ version }}
      - bpython{{ version }}
      - ipython{{ version }}
      - python{{ version }}-pip
      {% endfor -%}
      - ipython2-notebook
