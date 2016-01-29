PLUGIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ -n "$ZSH_VERSION" ]; then
  PLUGIN_DIR="$( cd "$( dirname "${(%):-%N}" )" && pwd )"
fi

export PATH=$PATH:$PLUGIN_DIR/bin

_soundboard()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(soundboard --list | xargs)" -- $cur) )
}

if [ -n "$ZSH_VERSION" ]; then
  autoload bashcompinit
  bashcompinit
fi

complete -F _soundboard soundboard
complete -F _soundboard sb

alias sb='soundboard'
