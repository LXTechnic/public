
setopt EXTENDED_GLOB

export YHOME="{{yhome}}"
export PATH="$YHOME/.bin:$PATH"

_addons=(
    https://github.com/LXTechnic/yup-tool.git
    git@codehub.devcloud.huaweicloud.com:LXTech/ashe-yup.git
)

source $YHOME/yup.zsh
source $YHOME/.autoload

ZSH_THEME=lx
yup oh-my-style https://raw.githubusercontent.com/LXTechnic/public/master/zsh-themes/lx.zsh-theme

# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

# for deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"