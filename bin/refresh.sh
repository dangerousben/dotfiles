#!/bin/sh

(cd ~/src/emacs && ./refresh.sh; cd ~/src/git && ./refresh.sh; cd ~/src/rage && ./refresh.sh; cd ~/src/elixir-ls && ./refresh.sh; cd ~/src/erlang_ls && ./refresh.sh) &

repos=$(cat <<'EOF'
anki
bloop
coreutils
decentraleyes
emacs-packages
firejail
glibc
guix
linux
LocalCDN
postgres
sangria-graphql
skarnet
suckless
stumpwm
tla+
typelevel
twitter
uBlockOrigin
util-linux
youtube-dl
yt-dlp
EOF
)

for d in $repos; do
    echo pulling all in "$d"...
    cd ~/src/"$d" && pull-all
done

guix pull
guix package -u -d
