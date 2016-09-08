nfs_package:
  pkg.installed:
    - name: nfs-utils

nfs_extras_packages:
  pkg.installed:
    - names:
      - nfsidmap
