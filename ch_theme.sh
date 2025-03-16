#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Only takes 1 argument"
        echo "ch_theme.sh hyper.toml"
        exit 1
fi

th_nm=$(awk '/# THEME START/{print NR}' alacritty.toml)

dl_nm="$(($th_nm+2))"',$d'
#echo $th_nm


if [[ $1 =~ ".toml" ]]; then
        sed -i $dl_nm alacritty.toml && cat $1 >> alacritty.toml
else
        sed -i $dl_nm alacritty.toml && cat "$1.toml" >> alacritty.toml
fi
