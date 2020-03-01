win_class = window.get_active_class()
clipboard.fill_clipboard(store.get_global_value("clipboardu"))
if win_class == "gvim.Gvim":
  keyboard.send_keys("<ctrl>+<shift>+<alt>+v")
elif win_class == "gnome-terminal-server.Gnome-terminal":
  keyboard.send_keys("<ctrl>+<shift>+v")
else:
  keyboard.send_keys("<ctrl>+v")