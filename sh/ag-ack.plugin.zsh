# ------------------------------------------------------------------------------
#          FILE:  ag-ack.plugin.zsh
#   DESCRIPTION:  search file for FE
#        AUTHOR:  shooter (shooter.herogmail.com)
#       VERSION:  0.1
#       REQUIRE:  https://github.com/ggreer/the_silver_searcher
# ------------------------------------------------------------------------------

fjs() {
    find ./ -name "$@*" -type f | grep '\.js'
}

fcss() {
    find ./ -name "$@*" -type f | grep '\.css'
}

if [ ! -x $(which ag) ]; then
    echo  \'ag\' is not installed!
    exit -1
fi

agjs() {
    ag --js "$@"
}

agcss() {
    ag --css "$@"
}

aghtml() {
  ag --html "$@"
}

agpy() {
  ag --py "$@"
}

if [ ! -x $(which ack) ]; then
    echo  \'ack\' is not installed!
    exit -1
fi

ajs() {
    ack "$@" --type js
}

acss() {
    ack "$@" --type css
}

ahtml() {
    ack "$@" --type html
}

apy() {
    ack "$@" --type python
}

arb() {
    ack "$@" --type ruby
}

# http://stackoverflow.com/a/25304710