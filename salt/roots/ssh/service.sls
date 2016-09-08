include:
  - .package

sshd_service:
  service.running:
    - name: sshd
    - enable: True
    - require:
      - ssh_package
