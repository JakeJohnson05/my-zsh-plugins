#compdef _dotenvx dotenvx

function _dotenvx() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD - 1]}"

  # List of available commands
  opts="run get set encrypt decrypt keypair ls"

  # Only complete the first argument with our commands
  if [[ ${COMP_CWORD} -eq 1 ]]; then
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
    return 0
  fi

  # Add more specific completions for subcommands if needed
  case "${prev}" in
  run | get | set | encrypt | decrypt | keypair | ls)
    # Add specific completions for each command if needed
    ;;
  *) ;;
  esac
}

_dotenvx "$@"
