ERROR_FORMAT='\033[0;31m\033[1m'
RESET_FORMAT='\033[0m'

function lint-rst {
  grep --line-number --color=always "$2" src/*.rst && printf "${ERROR_FORMAT}LINT FAILURE${RESET_FORMAT}: $1\n" && exit 1
}

lint-rst 'Missing semantic line break.' '\([^0-9][?!.]\) \([A-Z]\)'

exit 0
