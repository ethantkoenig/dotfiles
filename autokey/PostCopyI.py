text=clipboard.get_selection()
store.set_global_value("clipboardi", text)
with open("/home/ethantkoenig/.clipboardi", "w") as f:
  f.write(text)
