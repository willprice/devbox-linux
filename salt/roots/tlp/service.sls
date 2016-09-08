include:
  - .package

tlp_service:
  service.running:
    - name: tlp
    - enable: True
    - require:
      - tlp_package
      - systemd_rfkill_service_off

tlp_sleep_service:
  service.running:
    - name: tlp-sleep
    - enable: True
    - require:
      - tlp_package
      - systemd_rfkill_service_off

systemd_rfkill_service_off:
  service.dead:
    - name: systemd-rfkill
    - enable: False
