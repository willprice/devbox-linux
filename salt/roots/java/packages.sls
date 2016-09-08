{% for version in [7, 8] -%}
jdk{{ version }}_package:
  pkg.installed:
    - names:
      - jre{{ version }}-openjdk
      - jdk{{ version }}-openjdk
{% endfor -%}

gradle_package:
  pkg.installed:
      - name: gradle
