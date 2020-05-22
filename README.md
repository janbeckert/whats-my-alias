# whats-my-alias

## Overview
What's the shortcut for checking out a branch in git again? Just type:
```
$ whatsmyalias git checkout 
gcb='git checkout -b'
gcd='git checkout develop'
gcm='git checkout master'
gco='git checkout'
```
gotcha!

```whatsmyalias``` finds alias definitions for the active shell using search keywords.

## Install

```
cat alias.sh >> ~/.bashrc
```
or
```
cat alias.sh >> ~/.zshrc
```
or just manually integrate the following aliases:
```
alias whatsmyalias="f(){ alias | grep -e \"^[^=]*=\'.*\$1.*\$2.*\$3.*\$4.*\$5.*\$6.*\$7.*\$8.*\'$\" ; unset -f f; }; f"
alias wma='whatsmyalias'
```

## Usage

```
whatsmyalias keywords more key words
```
or
```
wma keywords more key words
```

e.g.:
```
$ wma docker up
dkcpup='docker-compose up -d'

$ wma git pull
ggpull='git pull origin "$(git_current_branch)"'
gl='git pull'
glum='git pull upstream master'
gup='git pull --rebase'
gupa='git pull --rebase --autostash'
gupav='git pull --rebase --autostash -v'
gupv='git pull --rebase -v'

$ wma git log graph
glgg='git log --graph'
glgga='git log --graph --decorate --all'
glgm='git log --graph --max-count=10'
glod='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
glods='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
glog='git log --oneline --decorate --graph'
gloga='git log --oneline --decorate --graph --all'
glol='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
glola='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
glols='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
```

Happy memorizing!