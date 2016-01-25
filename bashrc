PLUGIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PATH=$PATH:$PLUGIN_DIR/bin

_soundboard()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(soundboard --list | xargs)" -- $cur) )
}

if [ -n "$BASH" ]; then
  complete -F _soundboard soundboard
  complete -F _soundboard sb
fi

alias sb='soundboard --key'
