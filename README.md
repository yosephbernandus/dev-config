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
- ctrl + w + s (Split)
- dw (delete word)
- ctrl+w / ctrl+e (next character word)
- g_ (go to end character)
- leader t (runnning vim test) 
- ctrk s + z (Tmux zoom up)
- ^ or _ first character non whitespace

## LSP Config
- :h vim.lsp.buf -> help to see vim available function

## Nerd Fonts install
- check fonts located using whereis fonts
- move fonts downloaded from https://www.nerdfonts.com/font-downloads and unzip
- sudo fc-cache -fv (reload the fonts)

## Tmux Command
- Ctrl+b running command tmux
- Ctrl+b % New Window
- Ctrl+b " horizontal
- Arrow Key to move tmux session
- Ctrl+b } moving layout
- Ctrl+b space moving layout to middle
- Ctrl+b c new window 
- Ctrl+b : colon in bottom
- rename-window server 
- tmux ls (list session)
- tmux attach (show session)
- Ctrl+b s (Checkout tmux session)
- rename-session server 
- Ctrl+b w (show all session)
- (Leader change to) C-s
- Ctrl-s + r (To Reload) default is ctrl+b I chanage it
- tmux source ~/.tmux.conf (if the tmux not success restart)
- https://github.com/tmux-plugins/tpm (Package Manager)
- ctrl-s + I to makesure the plugin is installed
- and always using new tmux for getting the new feature update (Suggestion from tar source tarball https://github.com/tmux/tmux/wiki/Installing#from-source-tarball)


## Lazygit
- https://github.com/jesseduffield/lazygit?tab=reiadme-ov-file#ubuntu
- lazygit
- ? (open the keybindings) -> / (to search key bindings)


## Livegrep telescope not working
- Check using :check telescope
- livegrep need install ripgrep https://github.com/BurntSushi/ripgrep
