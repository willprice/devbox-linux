include:
  - pacman

xorg_packages:
  pkg.installed:
    - names:
      - xf86-video-intel
      - xf86-input-libinput
      - mesa-libgl
      - lib32-mesa-libgl
      - xorg-server
      - xorg-server-utils
      - xorg-xinit
    - require:
      - pacman_conf


xorg_app_packages:
  pkg.installed:
    - names:
      - xorg-bdftopcf
      - xorg-iceauth
      - xorg-luit
      - xorg-mkfontdir
      - xorg-mkfontscale
      - xorg-sessreg
      - xorg-setxkbmap
      - xorg-smproxy
      - xorg-x11perf
      - xorg-xauth
      - xorg-xbacklight
      - xorg-xcmsdb
      - xorg-xcursorgen
      - xorg-xdpyinfo
      - xorg-xdriinfo
      - xorg-xev
      - xorg-xgamma
      - xorg-xhost
      - xorg-xinput
      - xorg-xkbcomp
      - xorg-xkbevd
      - xorg-xkbutils
      - xorg-xkill
      - xorg-xlsatoms
      - xorg-xlsclients
      - xorg-xmodmap
      - xorg-xpr
      - xorg-xprop
      - xorg-xrandr
      - xorg-xrdb
      - xorg-xrefresh
      - xorg-xset
      - xorg-xsetroot
      - xorg-xvinfo
      - xorg-xwd
      - xorg-xwininfo
      - xorg-xwud
