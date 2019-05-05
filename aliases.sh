function hjm() {
    ( cd ~/HJMHomestead && vagrant $* )
}

function hjm-run() {
    PROJECTPATH=${$(pwd)##*Projects/HJM/development/}
    echo $(hjm ssh -- -t "cd projects/$PROJECTPATH && $*")
}

function hjm-ssh() {
    PROJECTPATH=${$(pwd)##*Projects/HJM/development/}
    ssh -p 2222 vagrant@localhost -t "cd projects/$PROJECTPATH ; /bin/bash"
}

alias hjmr='hjm-run'
alias hjmssh='hjm-ssh'
