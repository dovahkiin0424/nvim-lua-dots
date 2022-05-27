## Welcome!

This is my comfy nvim IDE config written in lua. For now it uses dracula theme with transparent background.

This is how it looks with my colorscheme with i3 and alacritty:

![screenshot](https://github.com/dovahkiin0424/nvim-lua-dots/blob/main/screenshot.png?raw=true)

## Installation

Just clone the repo and copy the files to your `~/config/nvim/` folder.

When you first open vim with the config, it will print a tons of errors, but **don't panic!**

It happens, cuz you need to install the called plugins, so on the error page, just hit `enter`, and in normal mode type `:PackerSync` (you can `tab` it).

Exit vim and you will ready to go, when you open it again.

## Initial config

I'm using TreeSitter and LSP

For proper syntax highlighting: `:TSInstall <your desired language>` e.g.: `:TSInstall go`

You can view all the supported stuff with: `:TSInstallInfo`

For autocompletion, snippets and the other fancy stuff: `:LspInstall <your desired language or linter name>` e.g.: `:LspInstall go` or `:LspInstall gopls`

For the list of supported stuff press `tab` after typing `:LspInstall` (works with treesitter too)

You are ready to go!

**Thank you for the stars and have a nice day!**
