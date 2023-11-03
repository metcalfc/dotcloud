function is_gitpod() {
    test -e /usr/bin/gp && test -v GITPOD_REPO_ROOT;
}

function is_codespaces() {
    test -v CODESPACES || test -e /home/codespace;
}

function is_daytona() {
    test -e /.daytona/daytona || test -v $DAYTONA_WS_ID;
}

function is_remote {
    is_daytona || is_codespaces || is_gitpod;
}
