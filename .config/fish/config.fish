# Greeting
echo "brrrrrrrrr" | cowthink -f kirby # Kirby go brrr
# colorscript random # Random color script

# Exports
set fish_greeting # Disable default welcome message
set -Ux EDITOR /usr/bin/nvim
set -Ux VISUAL /usr/bin/nvim

# Shell Mode
function fish_user_key_bindings
  # fish_default_key_bindings
  fish_vi_key_bindings
end

# Cursor
# not supported in alacritty
set fish_cursor_default block blink
set fish_cursor_insert line blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual block

# Autocomplete and Highlight Colors
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
# Bindings for !! and !$
if [ $fish_key_bindings = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Aliases
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias cdiv="yes 9999 | head -n (tput cols) | spark | lolcat"
alias clear="clear; echo; echo; cdiv; cdiv; cdiv; echo; echo"
alias vim=nvim
alias bs="br --sizes"
alias la="exa -la --color=always --group-directories-first"
