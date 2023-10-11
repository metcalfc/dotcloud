function install_helix {
    export DEBIAN_FRONTEND=noninteractive
    sudo add-apt-repository ppa:maveonair/helix-editor -y
    sudo apt update
    sudo apt install -y helix
}

function uninstall_helix {
    export DEBIAN_FRONTEND=noninteractive
    sudo apt remove -y helix
    sudo add-apt-repository --remove ppa:maveonair/helix-editor -y
}

function wrap_hx () {
    #check if helix package is installed
    if ! dpkg -s helix &> /dev/null; then
        echo "Helix is not installed. Installing..."
        install_helix
    fi
    hx "$@"
}

alias hx=wrap_hx
