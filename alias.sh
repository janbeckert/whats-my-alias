alias whatsmyalias="f(){ alias | grep -e \"^[^=]*=\'.*\$1.*\$2.*\$3.*\$4.*\$5.*\$6.*\$7.*\$8.*\'$\" ; unset -f f; }; f"
alias wma='whatsmyalias'
