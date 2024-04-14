# dev-config

## Neovim Install:
- Dont forget backup file on ~/.config/nvim
- Download Tar File https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-download
- move to local config tar xzf nvim-linux64.tar.gz -C /usr/local -> rename directory to nvim
- nano ~/.bashrc
- export PATH="/usr/local/bin:$PATH" (Set nvim as global)


## Shortcuts:
- https://vim.rtorr.com/
- $ (end line)
- 0 (start line)
- qa (macro record)
- q (stop macro record)
- @a (run macro record)
- j (move the cursor to the next line)
- Ctrl + v
- Shift + v
- =
- Shift >
- Shift <
- dd
- dw
- yy
- d


## LSP Config
- :h vim.lsp.buf -> help to see vim available function

## Nerd Fonts install
- check fonts located using whereis fonts
- move fonts downloaded from https://www.nerdfonts.com/font-downloads and unzip
- sudo fc-cache -fv (reload the fonts)
