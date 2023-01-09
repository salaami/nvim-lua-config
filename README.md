# nvim-lua-config
Configuration of Nvim using Lua 

## requirements
1. Adjust the `init.lua` in the directory before so that it requires the plugin_config. Like so
```
require('nvim-lua-config/settings')
require('nvim-lua-config/plugins')
require('nvim-lua-config/keybinds')
require('nvim-lua-config/autocmd')
require('nvim-lua-config/plugin_config')
```
2. Make sure a Nerd Font is installed to be able to display all the icon in the nvim-tree 
