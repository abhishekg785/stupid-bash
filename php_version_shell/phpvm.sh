if false
then 
    A simple shell command to set the php version just like nvm for nodejs 
    author : abhishek goswami
    abhishekg785@gmail.com
fi

############## Gloal Variables ###############
SCRIPT_NAME='phpvm'
SCRIPT_VERSION='0.1.0'
SCRIPT_DISPLAY_NAME="$SCRIPT_NAME V$SCRIPT_VERSION"

function phpvm {
    TARGET_VERSION=$1
    local grep="command grep -E"
    if [[ -n $(command -v brew) ]]; then
    export _PHP_VERSIONS="$_PHP_VERSIONS $(echo $(find $(brew --cellar) -maxdepth 1 -type d | $grep 'php[0-9]*$'))"
    echo $_PHP_VERSIONS;
    fi
}
