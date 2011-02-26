export VENVS=~/envs
export PROJS=~/Projects

# auto completion
_ve()
{
  COMPREPLY=()
  if [[ $COMP_CWORD == 1 ]] ; then
    COMPREPLY=( $(compgen -d $VENVS/${COMP_WORDS[COMP_CWORD]} | sed "s/\/.*\///") )
    return 0
  fi
}
complete -F _ve ve

ve() {
  . $VENVS/$1/bin/activate
  cd $PROJS/$1 
}


