This a my personal vim configuration, which aim at fast editing and programming in Python.

- `init.vim` is the default configuration file for neovim
- `coc-settings.json` is the configuration file for coc, which is a very powerful tool for almost everything.
- `rc/` contains the modularized configuration
  - `vimplug.vim` is the list of plugs
  - `keymapping` is my personal shortcut. I make the leader key as Space and many key-mapping based on it.
  - `plugins/` contains the setting for each plugin
    - `ui.vim` contains all the setting for UI
    - `others.vim` contains some basic configuration
    - the remaining files are for the corresponding plugins which their names stands for.
