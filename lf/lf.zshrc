lfextra () {

    cleanup() {
        rm -rf "$LF_TEMPDIR"
        unset LF_TEMPDIR
    }

    # Set up temporary directory.
    export LF_TEMPDIR="$(mktemp -d -t lf-XXXXXX)"

    trap cleanup HUP INT TERM QUIT

    # Initialize scrolling offset (page number or line offset)
    echo "1">>"$LF_TEMPDIR/offset"

    lf -last-dir-path="$LF_TEMPDIR/lastdir" "$@"

    cd "$(cat "$LF_TEMPDIR/lastdir")"
    cleanup
}
alias lf=lfextra
