#! /bin/bash

langs=$HOME/.local/langs
zigversion=0.13.0

wget -P /tmp https://ziglang.org/download/$zigversion/zig-linux-x86_64-$zigversion.tar.xz

if [ ! -d $langs ]; then 
	mkdir $langs 
fi

tar -xvf /tmp/zig-linux-x86_64-$zigversion.tar.xz -C $langs
mv $langs/zig-linux-x86_64-$zigversion $langs/ziglang

echo 'export PATH="$PATH:$HOME/.local/langs/ziglang"' >> $HOME/.zshenv
