#!/usr/bin/env bash
set -o errexit
set -o nounset

main() {
  input=$*

if [ $(("$input" % 4)) -eq 0 ] && [ ! $(("$input" % 100)) -eq 0 ] || [ $(("$input" % 400)) -eq 0 ]; then
  echo "$input is a leap year."
else
  echo "$input is NOT a leap year."
fi

}

main "$@"
