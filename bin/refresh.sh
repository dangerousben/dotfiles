#!/bin/sh

refresh_package () {
    cd "$1" && chronic ./refresh.sh
}

(
    refresh_package ~/src/age
    refresh_package ~/src/erlang_ls
    refresh_package ~/src/comit-network-atomic-swap/xmr-btc-swap
    refresh_package ~/src/emacs
    refresh_package ~/src/fd
    refresh_package ~/src/git
    refresh_package ~/src/rage
    refresh_package ~/src/ripgrep
    refresh_package ~/src/suckless/st
)

repos=$(cat <<'EOF'
electrum
emacs-packages
erlang
LocalCDN
skarnet
suckless
stumpwm
uBlockOrigin
youtube-dl
yt-dlp
EOF
)

for d in $repos; do
    echo pulling all in "$d"...
    cd ~/src/"$d" && pull-all
done

chronic guix pull
chronic guix package -u -d
