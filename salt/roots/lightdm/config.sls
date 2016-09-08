include:
  - .package

lightdm_config:
  file.managed:
    - name: "/etc/lightdm/lightdm.conf"
    - source: "salt://lightdm/templates/lightdm.conf.j2"
    - require:
      - lightdm_package
      - lightdm_greeter_package
