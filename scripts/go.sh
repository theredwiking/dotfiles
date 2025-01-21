#! /bin/bash

langs=$HOME/.local/langs
version=1.23.4

wget -P /tmp https://go.dev/dl/go$version.linux-amd64.tar.gz

if [ ! -d $langs ]; then 
	mkdir $langs 
fi

rm -rf $langs/go && tar -C $langs -xzf /tmp/go$version.linux-amd64.tar.gz

echo 'export PATH="$PATH:$HOME/.local/langs/go/bin"' >> $HOME/.zshenv
