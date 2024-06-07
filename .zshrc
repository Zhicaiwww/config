# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias ls='ls --color'
alias py='python'


source ~/.zplug/init.zsh
zplug "marlonrichert/zsh-autocomplete"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "jeffreytse/zsh-vi-mode"
zplug load --verbose

export PATH=/opt/homebrew/bin:$PATH
export GIT=/opt/homebrew/Cellar/git/2.36.e
export PATH=$PATH:$GIT/bin
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export PROMPT='%F{13}%~ %F{50}%B%# %f%b'
alias ll='ls -l'
alias grep='grep --color'

[[ -s ~/.bashrc ]] && source ~/.bashrc
source ~/.bash_profile
 
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/zhicaiwang/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zhicaiwang/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zhicaiwang/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/zhicaiwang/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

