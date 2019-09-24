ERROR_FORMAT='\033[0;31m\033[1m'
RESET_FORMAT='\033[0m'
ERRORS=false

function lint-rst {
  grep --line-number --color=always "$2" src/*.rst &&
  printf "${ERROR_FORMAT}LINT FAILURE${RESET_FORMAT}: $1\n" &&
  ERRORS=true
}

lint-rst 'Missing semantic line break.' '[^0-9][?!.] [A-Z]'
lint-rst 'More than one space after punctuation.' '[?!.]  '

if [ "$ERRORS" = true ]; then
  exit 1;
fi
exit 0
