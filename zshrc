DIR=$(dirname $(readlink ${(%):-%N}))

for f in $(ls $DIR/*/*.zsh) ; do . $f; done
