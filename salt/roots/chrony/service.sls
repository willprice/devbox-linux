include:
  - .config

chrony_service:
  service.running:
    - name: chrony
    - enable: True
    - watch:
      - chrony_config
