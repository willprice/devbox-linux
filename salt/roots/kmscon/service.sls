kmscon_service:
  service.enabled:
    - name: kmsconvt@tty2
    - require:
      - kmscon_package
