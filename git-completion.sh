_git_publish ()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  # show local branches only
  branches=$(git branch --no-color | sed -e 's/^\*\? \+//' | tr "\n" " ")
  COMPREPLY=( $(compgen -W "$branches" -- $cur) )
}

_git_draft ()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  # show local branches only
  branches=$(git branch --no-color | sed -e 's/^\*\? \+//' | tr "\n" " ")
  COMPREPLY=( $(compgen -W "$branches" -- $cur) )
}
