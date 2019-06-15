#!/usr/bin/env bash
set -o errexit
set -o nounset

main() {
  input=$*

  if [ -n "$input" ]; then
    echo "One for $input, one for me."
  elif [ -z "$input" ]; then
    echo "One for you, one for me."
  fi	
}

# Calls the main function passing all the arguments to it via '$@'
# The argument is in quotes to prevent whitespace issues
main "$@"
