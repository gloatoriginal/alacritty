#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Only takes 1 argument"
        echo "ch_theme.sh hyper.toml"
        exit 1
fi

if [[ $1 =~ ".toml" ]]; then
        sed -i '18,$d' alacritty.toml && cat $1 >> alacritty.toml
else
        sed -i '18,$d' alacritty.toml && cat "$1.toml" >> alacritty.toml
fi
