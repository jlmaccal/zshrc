# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#export SOLARIZED_THEME=light
ZSH_THEME="blinks"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew osx vi-mode dirpersist)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:/opt/local/bin:/usr/local/git/bin:/usr/bin:/bin

export PATH=/Volumes/macbook/Users/jlmaccal/src/amber11/bin:$PATH
export PATH=~/Scripts:~/Scripts/bin:$PATH

export PATH=~/src/hhsuite-2.0.13-macosx/bin:$PATH
export HHLIB=~/src/hhsuite-2.0.13-macosx/lib/hh

alias vmd='"/Applications/VMD 1.9.app/Contents/MacOS/startup.command" $*'
alias pymol='/Applications/MacPyMOL.app/Contents/MacOS/MacPyMOL $*'
alias pymolx='/Applications/MacPyMOLX11Hybrid.app/Contents/MacOS/MacPyMOL $*'
alias ls='ls -G'
alias dl='dirs -v'

export EDITOR=vim
#export LSCOLORS=dxfxcxdxbxegedabagacad

export PYTHONPATH=/Volumes/macbook/Users/jlmaccal/Scripts/lib/python
export AMBERHOME=/Volumes/macbook/Users/jlmaccal/src/amber11
export ROSETTA3_DB=/Volumes/macbook/Users/jlmaccal/src/rosetta/rosetta_database
#export DYLD_LIBRARY_PATH=/usr/local/openmm/lib:/usr/local/cuda/lib

bindkey "[A" history-search-backward
bindkey "[B" history-search-forward

# setup jj for vim-mode
bindkey "jj" vi-cmd-mode

# setup EPD
export PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"

# tell os x to open new terminal tab in the same directory
#precmd () {print -Pn "\e]2; %~/ \a"}
#preexec () {print -Pn "\e]2; %~/ \a"}

# setup shared history
setopt append_history share_history histignorealldups

# setup cd to automatically persist directories
cd() {builtin cd "$@" ; dirpersiststore}

# The following 4 lines have been added by 3delight
#if [[ -e /Applications/Graphics/3Delight-10.0.4 ]]; then  # added by 3delight
  #export DELIGHT=/Applications/Graphics/3Delight-10.0.4   # added by 3delight
  #source $DELIGHT/.3delight_bash                         # added by 3delight
#fi                                                       # added by 3delight

