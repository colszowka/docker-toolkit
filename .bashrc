export PROMPT_COMMAND=__prompt_command  # Func to gen PS1 after CMDs

update_title() { echo -en "\e]0;$(basename $(pwd))\a"; }

function __prompt_command() {
  local RED="\[\033[31m\]"
  local YELLOW="\[\033[33m\]"
  local BLACK="\[\033[30m\]"
  local CYAN="\[\033[36m\]"
  local GREEN="\[\033[32m\]"
  local PURPLE="\[\033[35m\]"
  local GREY="\[\033[37m\]"
  local BOLD="\[\033[1m\]"
  local CLEAR="\[\033[0;0m\]"

  parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
  }

  ruby_version() {
    ruby -v | cut -f2 -d" "
  }
  node_version() {
    node -v
  }

  PS1="[$GREY\D{%H:%M:%S}$CLEAR] $BOLD\u@\h $GREEN\w $YELLOW↱ \$(parse_git_branch) $RED💎 \$(ruby_version) $GREEN⬢ \$(node_version)$CLEAR\n${GREEN}▶${CLEAR} "
}