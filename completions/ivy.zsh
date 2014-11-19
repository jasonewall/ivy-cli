if [[ ! -o interactive ]]; then
    return
fi

compctl -K _ivy ivy

_ivy() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(ivy commands)"
  else
    completions="$(ivy completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
