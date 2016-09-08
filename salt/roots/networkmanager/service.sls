include:
  - .package

networkmanager_service:
  service.running:
    - name: NetworkManager
    - enable: True
    - require:
      - networkmanager_package

