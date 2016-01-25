DIR=`dirname $0`

paz-soundboard() {
  python $DIR/soundboard/soundboard.py $@
}

_paz-soundboard()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(paz-soundboard --list | xargs)" -- $cur) )
}

complete -F _paz-soundboard paz-soundboard
