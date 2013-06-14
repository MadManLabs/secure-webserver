#!/bin/bash  

if [ -n "$1" ]; then
	VAGRANT_BASE=$1
else 
	VAGRANT_BASE=$(dirname $0)
fi	

echo "** running sanity tests **"
sudo rspec $VAGRANT_BASE/spec/nginx.rb
sudo rspec $VAGRANT_BASE/spec/csr.rb
