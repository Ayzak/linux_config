## LoKe's ~/.bashrc
[ -z "$PS1" ] && return

#7zip => p7zip
alias dezip='p7zip -d'
#zip2=>pbzip2
alias zip2='pbzip2'

# Basic options
export HISTCONTROL=ignoredups
export COLORFGBG='default;default'

shopt -s checkwinsize
#eval "$(dircolors -b /etc/dircolors)"

###############
### aliases ###
###############

#GCC
alias gcc='gcc -Wall'

#niveau battery
alias bat='acpi -b'

#bsdgames 
alias bsdgames='echo  adventure, arithmetic, atc, backgammon, battlestar, bcd, boggle, caesar, canfield, countmail, cribbage, dab, go-fish, gomoku, hack, hangman, hunt, mille, monop, morse, number, pig, phantasia, pom, ppt, primes, quiz, random, rain, robots, rot13, sail, snake, tetris, trek, wargames, worm, worms, wump, wtf.'

#haskell
alias haskell='ghci'

#python3
alias py='python3.5'
#alias pyd='pydoc3.5'

#Connexion à actiVPN
alias tel='cd ~/Téléchargements/activpn_conf_openvpn'
alias vp=' sudo openvpn --config activpn-FR-2.ovpn'
alias vpn='tel && vp'

#Connexion à actiVPN connexion lente
alias tel='cd ~/Téléchargements/activpn_conf_openvpn'
alias vp=' sudo openvpn --config activpn-FR-slower.ovpn'
alias vpnl='tel && vp'

#rsync
alias sync='rsync -arv'

# General
alias df='df -h'
alias h='history'
alias duck='du -skc * | sort -rn'
alias chm='kchmviewer'
alias rc='vim ~/.bashrc'
alias nanos='sudo nano'


# System info
alias cpuu="ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d'"
alias memu='ps -e -o rss=,args= | sort -b -k1,1n | pr -TW$COLUMNS'
alias pg='ps aux | grep'  #requires an argument

# apt
alias purge="sudo dpkg -P `dpkg -l | grep "^rc" | tr -s ' ' | cut -d ' ' -f 2`"
alias search='aptitude search'
alias app='apt-cache policy'
alias aps='apt-cache search'
alias api='sudo apt-get install'
alias maj='sudo apt-get update && sudo apt-get upgrade'
alias apr='sudo apt-get remove'
alias aprr='sudo apt-get autoremove'
alias apu='sudo apt-get update'
alias apg='sudo apt-get upgrade'
alias apdg='sudo apt-get dist-upgrade'
alias sources='sudo nano /etc/apt/sources.list'
alias prox='sudo nano /etc/apt/apt.conf'

# interactive
alias cp='cp -vi'
alias mv='mv -vi'
#alias rm='mv --target-directory=$HOME/.Trash/'


#sudo vim
alias svi='sudo vim'

#go home
alias ~='cd /home/jeremy'

alias back='cd $OLDPWD'
alias root='sudo su'
alias runlevel='sudo /sbin/init'
alias grep='grep --color=auto'
alias dfh='df -h'
alias gvim='gvim -geom 84x26'
alias start='dbus-launch startx'
alias h="history|grep "
alias f="find . |grep "
alias p="ps aux |grep "

# network
alias net1='watch --interval=2 "sudo netstat -apn -l -A inet"'
alias net2='watch --interval=2 "sudo netstat -anp --inet --inet6"'  
alias net3='sudo lsof -i'
alias net4='watch --interval=2 "sudo netstat -p -e --inet --numeric-hosts"'
alias net5='watch --interval=2 "sudo netstat -tulpan"'
alias net6='sudo netstat -tulpan'
alias net7='watch --interval=2 "sudo netstat -utapen"'
alias net8='watch --interval=2 "sudo netstat -ano -l -A inet"'
alias netl='sudo nmap -sT -O localhost' # more here http://www.redhat.com/docs/manuals/linux/RHL-9-Manual/security-guide/s1-server-ports.html
alias ping='ping -c 10'
alias currports='wine /home/iceni60/Desktop/Desktop_Folder/Network_Tools/currports/cports.exe'
alias winwhois='wine /home/iceni60/Desktop/Desktop_Folder/Network_Tools/win32whois_0_9_13/win32whois.exe'
alias xnews='wine /home/iceni60/Desktop/Desktop_Folder/Network_Tools/XNews/XNEWS.EXE'
alias whois='whois -H'

# listings
#déplacement
alias vp=' sudo openvpn --config activpn-FR.ovpn'
alias ls='ls -F -h --color=auto'
alias ll='ls -lF'
alias la='ls -AF'
alias l='ls -CF --color=auto'

alias lh='ls -lah'                # human readable (sizes) long and all ;-)
alias lls='ls -l -h -g -F --color=auto'
alias lsam='ls -am'               # List files horizontally
alias lr='ls -lRF'                 # recursive
alias lsx='ls -ax'                # sort right to left rather then in columns
alias lss='ls -shAxSr'            # sort by size
alias lt='ls -lAtrh'              # sort by date and human readable
alias lm='ls -al |more'           # pipe through 'more'
alias lla='ls -laF'

# scripts
alias calc='sh /home/iceni60/scripts/calc.sh'
alias whatsmyip='/home/iceni60/scripts/whatsmyip.sh'
alias unpack='/home/iceni60/scripts/unpack2dir.sh'

# chmod and permissions commands
alias mx='chmod a+x'
alias 000='chmod 000'
alias 644='chmod 644'
alias 755='chmod 755'
alias perm='stat --printf "%a %n \n "' # requires a file name e.g. perm file

# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

#tar
alias targ='tar -xvzf'
alias tarb='tar -xvjf'
alias tar='tar -xvf'



# Prompt
#BGREEN='\[\033[1;32m\]'
#GREEN='\[\033[0;32m\]'
#BRED='\[\033[1;31m\]'
#RED='\[\033[0;31m\]'
#BBLUE='\[\033[1;34m\]'
#BLUE='\[\033[0;34m\]'
#NORMAL='\[\033[00m\]'
alias lc='ls -aCF'
#PS1="${BLUE}(${RED}\w${BLUE}) ${NORMAL}\h ${RED}\$ ${NORMAL}"



############################## ##################################
# ##### PROMPT SECTION ##### ####################################
############################## ##################################


###################### the above is a separate prompt which can be used instead of below. NOTE: only ONE line at a time should be uncommented. so there are 6 different prompts above!!!!!

#color_name='\[\033[ color_code m\]
rgb_red='\[\033[01;31m\]'
rgb_forest='\[\033[00;32m\]'
rgb_green='\[\033[01;32m\]'
rgb_brown='\[\033[00;33m\]'
rgb_yellow='\[\033[01;33m\]'
rgb_navy='\[\033[00;34m\]'
rgb_blue='\[\033[01;34m\]'
rgb_purple='\[\033[00;35m\]'
rgb_magenta='\[\033[01;35m\]'
rgb_cadet='\[\033[00;36m\]'
rgb_cyan='\[\033[01;36m\]'
rgb_gray='\[\033[00;37m\]'
rgb_white='\[\033[01;37m\]'

rgb_std="${rgb_white}"

if [ `id -u` -eq 0 ]
then
    rgb_usr="${rgb_red}"
else
    rgb_usr="${rgb_green}"
fi

[ -n "$PS1" ] && PS1="${rgb_usr}`whoami`${rgb_magenta}\w${rgb_usr}\\\$${rgb_restore}\[\e[01;32m\][\[\e[0m\]\[\e[00;31m\]\$?\[\e[0m\]\[\e[01;32m\]]>\[\e[0m\] "

unset   rgb_restore   \
        rgb_black     \
        rgb_firebrick \
        rgb_red       \
        rgb_forest    \
        rgb_green     \
        rgb_brown     \
        rgb_yellow    \
        rgb_navy      \
        rgb_blue      \
        rgb_purple    \
        rgb_magenta   \
        rgb_cadet     \
        rgb_cyan      \
        rgb_gray      \
        rgb_white     \
        rgb_std       \
        rgb_usr




# Paths
PATH=$PATH:${HOME}/bin:/usr/lib/wine/bin:/sbin:/usr/sbin
export PATH=$PATH:/usr/local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/wine/lib:/usr/local/lib
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig


#################
### FUNCTIONS ###
#################

function    ff               { find . -name $@ -print; }

function    rmf              { rm -fr $@; }

function    osr              { shutdown -r now; }
function    osh              { shutdown -h now; }

function    mfloppy          { mount /dev/fd0 /mnt/floppy; }
function    umfloppy         { umount /mnt/floppy; }

function    mdvd             { mount -t iso9660 -o ro /dev/dvd /mnt/dvd; }
function    umdvd            { umount /mnt/dvd; }

function    mcdrom           { mount -t iso9660 -o ro /dev/cdrom /mnt/cdrom; }
function    umcdrom          { umount /mnt/cdrom; }

function    psa              { ps aux $@; }
function    psu              { ps  ux $@; }

function    dub              { du -sclb $@; }
function    duk              { du -sclk $@; }
function    dum              { du -sclm $@; }

function    dfk              { df -PTak $@; }
function    dfm              { df -PTam $@; }
function    dfh              { df -PTah $@; }
function    dfi              { df -PTai $@; }

# SPECIAL FUNCTIONS
#######################################################

# clock - A bash clock that can run in your terminal window. 
clock () 
{ 
while true;do clear;echo "===========";date +"%r";echo "===========";sleep 1;done 
}

# X Terminal titles
case "$TERM" in
xterm*|rxvt*)
	PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
	;;
*)
	;;
esac

# Functions
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1		;;
			*.tar.gz)	tar xzf $1		;;
			*.bz2)		bunzip2 $1		;;
			*.rar)		rar x $1		;;
			*.gz)		gunzip $1		;;
			*.tar)		tar xf $1		;;
			*.tbz2)		tar xjf $1		;;
			*.tgz)		tar xzf $1		;;
			*.zip)		unzip $1		;;
			*.Z)		uncompress $1	;;
			*)			echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}
ziprm () {
	if [ -f $1 ] ; then
		unzip $1
		rm $1
	else
		echo "Need a valid zipfile"
	fi
}
psgrep() {
	if [ ! -z $1 ] ; then
		echo "Grepping for processes matching $1..."
		ps aux | grep $1 | grep -v grep
	else
		echo "!! Need name to grep for"
	fi
}
grab() {
	sudo chown -R ${USER} ${1:-.}
}

#netinfo - shows network information for your system
netinfo ()
{
echo "--------------- Network Information ---------------"
/sbin/ifconfig | awk /'inet addr/ {print $2}'
/sbin/ifconfig | awk /'Bcast/ {print $3}'
/sbin/ifconfig | awk /'inet addr/ {print $4}'
/sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
myip=`lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g' `
echo "${myip}"
echo "---------------------------------------------------"
}

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls -Fh --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       rar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

#dirsize - finds directory sizes and lists them for the current directory
dirsize ()
{
du -shx * .[a-zA-Z0-9_]* 2> /dev/null | \
egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
egrep '^ *[0-9.]*M' /tmp/list
egrep '^ *[0-9.]*G' /tmp/list
rm -rf /tmp/list
}

#copy and go to dir
cpg (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}

#move and go to dir
mvg (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}

# Bash completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# Locale and editor
export EDITOR=nano
export BROWSER="firefox '%s' &"


#export and script for cheat autocompletion,color etc...
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function _cheat_autocomplete {
    sheets=$(cheat -l | cut -d' ' -f1)
    COMPREPLY=()
    if [ $COMP_CWORD = 1 ]; then
        COMPREPLY=(`compgen -W "$sheets" -- $2`)
    fi
}

complete -F _cheat_autocomplete cheat
export CHEATCOLORS=true
export CHEATPATH=/path/to/my/cheats
export CHEATPATH=$CHEATPATH:/path/to/more/cheats

# variables d'environnement pour Go
export GOROOT=$HOME/bin/go
export GOPATH=$HOME/workspace/go
export GOOS=linux
export GOARCH=amd64
export GOBIN=$GOROOT/bin
export PATH=$PATH:$GOBIN

#MAJ GO
majgo(){
	sudo git clone https://go.googlesource.com/go $GOROOT
    cd $GOROOT
	sudo git checkout go1.4.2
    cd $GOROOT/src
	sudo ./all.bash
}

# cours assembleur
export PATH=$PATH:/home/jeremy/Dropbox/Public/L3/ArchitectureSystem/gnuarm-3.3.3/bin
#arduino 
export PATH=$PATH:/home/jeremy/bin/arduino-1.6.6/
#racourci pour minivim ctrl+s
stty -ixon

#export BROWSER=w3m
#export BROWSER=lynx
export BROWSER=lynx googler
