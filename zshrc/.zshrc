# For supporting Tramp in Emacs

[[ $TERM == "tramp" ]] && unsetopt zle && PS1='$ ' && return
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return
     
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

if [[ "$OSTYPE" == "darwin"* ]]; then
  export ZSH="/Users/rjjt/.oh-my-zsh"
else
  if [ -d "/vagrant" ]; then
    export ZSH="/home/vagrant/.oh-my-zsh"
  else
    export ZSH="$HOME/.oh-my-zsh"
  fi
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git pip sbt scala 
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export RJJT_ZSH="${HOME}/Dropbox/dotfiles/.zshrc-rest-rjjt"
test -e $RJJT_ZSH && source $RJJT_ZSH

#source /tools/Xilinx/Vivado/2019.2/settings64.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:/Applications/Inkscape.app/Contents/MacOS
export PATH=$PATH:~/st/stm32cubeide
export PATH=$PATH:~/STM32CubeMX
export PATH=$PATH:~/idea/idea/bin
export PATH=$PATH:~/JetBrainsGateway/JetBrainsGateway/bin
export PATH=$PATH:/opt/nvim
export PATH=$PATH:~/jetbrains/pycharm/bin
export PATH=~/cmake/cmake/bin:$PATH

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

export NVM_DIR="/home/rjjt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export INTELFPGAOCLSDKROOT="/db1/tools/intelFPGA_pro/21.4/hld"

export QSYS_ROOTDIR="/home/rjjt/intelFPGA_pro/24.2/qsys/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -d "/opt/ros" ]; then
  # Setup ROS 2
  export ROS_VERSION=2
  export ROS_PYTHON_VERSION=3
  export ROS_DISTRO=jazzy
  export ROS_DOMAIN_ID=0
  [ -s "/usr/share/colcon_cd/function/colcon_cd.sh" ] && \
    \. "/usr/share/colcon_cd/function/colcon_cd.sh"
  export _colcon_cd_root=/opt/ros/$ROS_DISTRO/
  [ -s "/usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh" ] && \
    \. "/usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh" 
  [ -s  "/opt/ros/$ROS_DISTRO/setup.zsh" ] && \. "/opt/ros/$ROS_DISTRO/setup.zsh"
  #export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
  test /opt/ros/$ROS_DISTRO/setup.zsh && source /opt/ros/$ROS_DISTRO/setup.zsh

  # RTI Connext DDS for ROS2
  export RTI_LICENSE_FILE=path/to/rti_license.dat
  cd /opt/rti.com/rti_connext_dds-6.0.1/resource/scripts && \
    source ./rtisetenv_x64Linux4gcc7.3.0.bash; cd -
fi


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# For ruby and used by React Native
[[ $(whence -p rbenv) ]] && eval "$(rbenv init - zsh)"


[ -f "~/rjjt/.ghcup/env" ] && source "~/rjjt/.ghcup/env" # ghcup-env

[ -f "~/.passwords" ] && source "~/.passwords" # Hidden Passwords

# >>> scala-cli completions >>>
fpath=("/Users/rjjt/Library/Application Support/ScalaCli/completions/zsh" $fpath)
compinit
# <<< scala-cli completions <<<

if [[ -n $GHOSTTY_RESOURCES_DIR ]]; then
  source "$GHOSTTY_RESOURCES_DIR"/shell-integration/zsh/ghostty-integration
fi

