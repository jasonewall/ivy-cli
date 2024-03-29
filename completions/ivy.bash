_ivy() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(ivy commands)" -- "$word") )
  else
    local command="${COMP_WORDS[1]}"
    local completions="$(ivy completions "$command" ${COMP_WORDS[@]:2})"
    COMPREPLY=( $(compgen -W "$completions" -- "$word") )
  fi
}

complete -F _ivy ivy
