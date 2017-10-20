#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[38;5;33m\]\u\[$(tput sgr0)\]\[\033[38;5;171m\]@\[$(tput sgr0)\]\[\033[38;5;99m\]\h\[$(tput sgr0)\]\[\033[38;5;47m\]:\[$(tput sgr0)\]\[\033[38;5;207m\]\w\[$(tput sgr0)\]\[\033[38;5;81m\]\\$\[$(tput sgr0)\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export S3_BUCKET=""
export S3_REGION="us-east-1"
complete -C '/usr/local/bin/aws_completer' aws
export PATH=/usr/local/bin:$PATH
alias ls='ls -GFh'
alias flush_dns='sudo killall -HUP mDNSResponder'
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'
alias dc='docker-compose'
alias awsdi='aws ec2 describe-instances --instance-id'
alias lpl='lpass login '
alias conn_vpn='printf "$(lpass show --name  --username)\n$(lpass show --name  --password)\ny" | vpn -s connect '
alias dconn_vpn='vpn -s disconnect'

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
HISTFILESIZE=1000000
