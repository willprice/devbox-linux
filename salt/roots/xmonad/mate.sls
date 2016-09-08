xmonad_mate_wm:
  cmd.run:
    - name: dconf write /org/mate/desktop/session/required-components/windowmanager "'xmonad'"
    - runas: will
