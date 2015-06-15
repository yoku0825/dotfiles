# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export EDITOR=vim
alias docker="/usr/local/bin/docker_wrap.sh"
alias d="docker"
alias cpanm="sudo cpanm"
alias perl="perl -M'feature qw/say/' -MData::Dumper"

function multi
{
  case "$1" in
    "restart")
      shift
      mysqld_multi stop $*
      sleep 3
      mysqld_multi start $*
      ;;
    *)
      mysqld_multi $*
      ;;
  esac
}
