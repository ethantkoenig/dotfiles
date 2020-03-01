text=clipboard.get_selection()
store.set_global_value("clipboardu", text)
with open("/home/ethantkoenig/.clipboardu", "w") as f:
  f.write(text)
