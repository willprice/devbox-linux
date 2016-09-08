include:
  - .package

lightdm_service:
  service.enabled:
    - name: lightdm
    - require:
      - lightdm_package
      - lightdm_greeter_package
