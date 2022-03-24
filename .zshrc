# Created by newuser for 5.8
#

setopt notify
setopt numericglobsort
setopt promptsubst

# high EOL sign ('%')
PROMPT_EOL_MARK=""
NEWLINE_BEFORE_PROMPT=yes

autoload -U colors && colors
PROMPT="%B%{$fg[green]%}[$USER@$HOST %7~]%#%{$reset_color%} "
#PROMPT='\[\e[32m\][\u@\h \w]\$\[\e[m\] '
alias vim='nvim'
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*txt=94:*.doc=104:*.odt=104:*.csv=102:*.xlsx=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/en/.zshrc'

# enable completion features
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group ''
zstyle ':completion:*' list-colors''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zmodload zsh/complist
comp_options+=(globdots)

#use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey '^[[5~' beginning-of-history
bindkey '^[[6~' end-of-history
bindkey '^[[A~' history-beginning-search-backward
bindkey '^[[B~' history-beginning-search-forward

HISTFILE=~/.cache/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first	# delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups				# ignore duplicated commands history list
setopt hist_ignore_space			# ignore commands that start with space
setopt hist_verify						# show command with history expansion to user before running it

# configure `time` format
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'

# force zsh to show the complete history
alias history="history 0"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color|*-256color) color_prompt=yes;;
esac

#uncommet for a colored prompt, if terminal has the capability
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
  else
    color_prompt=
  fi
fi

#vim mode
bindkey -v
export KEYTIMEOUT=1

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

# enable syntax-highlighting
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main bracket pattern)
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[global-alias]=fg=magenta
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[path]=underline
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[command-substitution]=none
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta
ZSH_HIGHLIGHT_STYLES[process-substitution]=none
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=magenta
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=magenta
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=magenta
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=magenta
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=magenta
ZSH_HIGHLIGHT_STYLES[assign]=none
ZSH_HIGHLIGHT_STYLES[redirection]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
ZSH_HIGHLIGHT_STYLES[named-fd]=none
ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
ZSH_HIGHLIGHT_STYLES[arg0]=fg=green
ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold

# enable color support of ls, less and man, also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias diff='diff --color=auto'
  alias ip='ip --color=auto'
  export LESS_TERMCAP_mb=$'\E[1;31m'	# begin blink
  export LESS_TERMCAP_md=$'\E[1;36m'	# begin bold
  export LESS_TERMCAP_me=$'\E[0m'			# reset bold/blink
  export LESS_TERMCAP_so=$'\E[01;33m'	# begin reverse video
  export LESS_TERMCAP_se=$'\E[0m'			# reset reverse video
  export LESS_TERMCAP_us=$'\E[1;32m'	# begin underline
  export LESS_TERMCAP_ue=$'\E[0m'			# reset underline
fi

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# enable auto-suggestions based on the history
if [ -f /usr/share/zsh-autosuggestions.zsh ]; then
  . /usr/share/zsh-autosuggestions.zsh
  # change suggestion color
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLES='fg=#999'
fi

# enable commmand not found if installed
if [ -f /etc/zsh_command_not_found ]; then
  . /etc/zsh_command_not_found
fi
