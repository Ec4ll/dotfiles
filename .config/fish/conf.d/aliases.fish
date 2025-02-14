# Aliases
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias configstat="config status -u"
alias triangles="yes '△▽' | head -n (math --scale=0 (tput cols) / 2) | tr '\n' ',' | sed 's/,//g' | lolcat -F 0.03"
alias clear="/bin/clear;triangles"
alias vim=nvim
alias v="nvim_temp"
alias la="exa -la --color=always --group-directories-first"
alias battery="acpi"
alias bat-stat="sudo tlp-stat"
alias temp="sudo tlp-stat | grep 'Temperatures' -A 3"
alias hist="history | fzf"
alias pass="lpass show -c --password (lpass ls  | fzf | awk '{print (NF)}' | sed 's/\]//g')"
alias pacsearch="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"
alias aursearch="yay -Slq | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk \"{print \$2}\")' | xargs -ro  yay -S"
alias launchbar="~/.config/polybar/launch.sh"
alias killbar="kill (ps -e | rg poly | awk '{print \$1}')"
alias mdicons="xdg-open ~/Downloads/md-icons.html"
alias vs="nvimsearch"
alias cds="cdsearch"
alias redraw="echo -e \"\n\"; commandline -f repaint"
alias nvimconfig="cd ~/.config/nvim"
alias wmconfig="nvim ~/.config/xmonad/xmonad.hs"
alias shellconfig="cd ~/.config/fish"
alias py="python"
alias cduni="cd ~/Dropbox/uni/2021W"
alias cd221="cd ~/Dropbox/uni/2021W/CISC221/"
alias cd223="cd ~/Dropbox/uni/2021W/CISC223/"
alias cd235="cd ~/Dropbox/uni/2021W/CISC235/"
alias cd271="cd ~/Dropbox/uni/2021W/CISC271/"
alias cleanup="rm ~/java.log.*"
alias sql="sqlite3"
alias docker="sudo docker"
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
alias hackenv="source /home/ecal/.local/share/virtualenvs/hackenv-lLLAxNNd/bin/activate.fish"
alias .hack='/usr/bin/git --git-dir=/opt/.hack --work-tree=/opt'
alias rg="rg -S"
alias msf="msfconsole --quiet -x \"db_connect $USER@msf\""
alias venv="python -m venv"
alias searchsys="sudo find / 2>/dev/null | fzf"
alias update="yay -Syyu"
alias lg="lazygit"
alias gs="git status"
alias gf="git fetch"
alias gr="git fetch;git pull"
alias crontab="fcrontab"
alias enable-eyenotif="touch /tmp/eyetime"
alias disable-eyenotif="rm /tmp/eyetime"
alias tmux="tmux -2"
alias aliases="nvim ~/.config/fish/conf.d/aliases.fish"
alias funcs="cd ~/.config/fish/functions && la"
alias fishconf="cd ~/.config/fish && la"

