#!/bin/sh

(cd ~/src/coursier/coursier && ./refresh.sh; cd ~/src/metals && ./refresh.sh; coursier install bloop) &

(cd ~/src/emacs && ./refresh.sh; cd ~/src/git && ./refresh.sh; cd ~/src/rage && ./refresh.sh; cd ~/src/elixir-ls && ./refresh.sh; cd ~/src/erlang_ls && ./refresh.sh) &

repos=$(cat <<'EOF'
bloop
coreutils
emacs-packages
firejail
git
glibc
linux
postgres
sangria-graphql
skarnet
suckless
stumpwm
tla+
typelevel
twitter
uBlockOrigin
youtube-dl
yt-dlp
EOF
)

for d in $repos; do
    echo pulling all in "$d"...
    cd ~/src/"$d" && pull-all
done

guix pull
guix package -u
