RED='\033[0;31m'
RESET='\033[0m'

MY_TEST_ENV="asdfASDF"

printf "${RED}This\n"
printf "is\n"
printf "temporary${RESET}\n"

printf "Check permanence with MY_TEST_ENV. This script sets it to asdfASDF"
printf "Usage: source <(curl https://raw.githubusercontent.com/christopherbrass/dotfiles/refs/heads/main/temp_bash_config.sh)"
