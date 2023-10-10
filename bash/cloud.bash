function is_gitpod() {
    test -e /usr/bin/gp && test -v GITPOD_REPO_ROOT;
}

function is_codespaces() {
    test -v CODESPACES || test -e /home/codespace;
}

function is_daytona() {
    # todo return the second check when we fix env vars in local vs code
    # test -e /.ca/ca && test -v DAYTONA_WS_ID;
    test -e /.ca/ca;
}

function is_remote {
    is_daytona || is_codespaces || is_gitpod;
}
