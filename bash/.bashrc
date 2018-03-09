export PS1="\[$(tput bold)\]\[$(tput setaf 5)\]✘ \[$(tput setaf 6)\]\W\[$(tput setaf 5)\] ✘ \[$(tput sgr0)\]"

alias c="cd /c"
alias d="cd /d"
alias v="cd /v"
alias diego="cd ~"
alias appdata="cd ~/AppData"
alias bashrc="code ~/.bashrc"
alias www="cd /c/xampp/htdocs"
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias downloads="cd ~/Downloads"
alias drive="cd /c/'Google Drive'"
alias chrome="start chrome"
alias google="chrome https://google.com/"
alias diegocasillasdev="chrome https://diegocasillasdev.com/"
alias github="chrome https://github.com/diegocasillasdev/"
alias bitbucket="chrome https://bitbucket.org/"
alias mediavida="chrome https://mediavida.com/"
alias youtube="chrome https://youtube.com/"
alias spotify="chrome https://open.spotify.com/"
alias facebook="chrome https://facebook.com/"
alias instagram="chrome https://instagram.com/"
alias twitter="chrome https://twitter.com/"
alias devrant="chrome https://devrant.com/"
alias outlook="chrome https://outlook.live.com/"
alias gmail="chrome https://mail.google.com/"
alias pocket="chrome https://getpocket.com/"
alias oamk="chrome https://oamk.fi/en/"
alias slack="~/AppData/Local/slack/slack.exe"
alias heidi="/c/'Program Files'/HeidiSQL/./heidisql.exe"
alias steam="/c/'Program Files (x86)'/Steam/Steam.exe"
alias shrug="echo '¯\_(ツ)_/¯'"

translate() {
    if [ $# -eq 3 ]; then
        chrome https://translate.google.com/\#$2/$3/$1/
        
        return 0
    fi

    chrome https://translate.google.com/\#en/es/$1/

    return 0    
}

reddit() {
    if [ $# -eq 1 ]; then
        chrome https://reddit.com/r/$1/

        return 0    
    fi
        chrome https://reddit.com/

    return 0
}

open() {
    if [ $# -eq 1 ]; then
        if [ ! -d "$1" ]; then
            if (! eval $1); then
                return 1
            else
                eval $1
            fi
        else
            cd $1
        fi
    fi

    start .

    return 0
}

xampp() {
    TASKKILL //IM xampp-control.exe //F &> /dev/null

    if [ "$1" == "start" -o -z "$1" ]; then
        start /c/xampp/xampp-control.exe
    else
        /c/xampp/./xampp_stop.exe
    fi


    return 0
}

localhost() {
    chrome "http://localhost/"$1

    return 0
}
