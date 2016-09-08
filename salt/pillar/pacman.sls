pacman:
  keys:
    - '4209170B'
  config:
    repositories:
      core:
        Include:  /etc/pacman.d/mirrorlist
      extra:
        Include:  /etc/pacman.d/mirrorlist
      # Needs to be above community as it takes precedence
      haskell-core:
        Server: 'http://xsounds.org/~haskell/core/$arch'
      community:
        Include:  /etc/pacman.d/mirrorlist
      multilib:
        Include:  /etc/pacman.d/mirrorlist
      haskell-happstack:
        Server: 'http://noaxiom.org/$repo/$arch'
      archlinuxfr:
        Server: 'http://repo.archlinux.fr/$arch'
