project_name='digdag-test'

alias docker-compose="docker-compose -p $project_name"
alias build="docker-compose build"
alias up="docker-compose up"
alias stop="docker-compose stop"
alias digdag="docker-compose run --rm digdag_server java -jar /usr/local/bin/digdag"

if [ -n "$ZSH_VERSION" ]; then
  autoload -Uz colors
  colors
  RPROMPT="[%{${fg_bold[magenta]}%}$project_name%{${reset_color}%}]"
elif [ -n "$BASH_VERSION" ]; then
  prefix="(\[\e[35m\]$project_name\[\e[0m\])"
  PS1="$prefix $PS1"
fi
