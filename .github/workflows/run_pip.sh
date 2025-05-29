set +vx

pwd

eval "$($HOME/.pyenv/bin/pyenv init - bash)"
# echo "Shell is:  $SHELL"
# #$HOME/.pyenv/bin/pyenv shell 3.{$1}
# $HOME/.pyenv/bin/pyenv global 3.10 #3.11 3.12
# echo "Versions: "
# $HOME/.pyenv/bin/pyenv versions
# echo "prefixes"
# $HOME/.pyenv/bin/pyenv prefix
# echo "global"
# $HOME/.pyenv/bin/pyenv global
# echo "shims"
# $HOME/.pyenv/bin/pyenv shims
# echo `which python3.$1`
# echo `which python`
# python --version
# pip --version
# python3.$1 --version

# echo "let just blindly run pip"
# $HOME/.pyenv/shims/pip3.$1 --version
# $HOME/.pyenv/shims/pip3.$1 install --extra-index-url https://eiq.nxp.com/repository neutron_converter_SDK_25_03 --no-cache-dir;
# $HOME/.pyenv/shims/pip3.$1 uninstall neutron-converter_SDK_25.03 --yes ;
for i in {1..10}; do
	echo "Attempt $i"; 
	pip3.$1 install --extra-index-url https://eiq.nxp.com/repository neutron_converter_SDK_25_03 --no-cache-dir;
	pip3.$1 uninstall neutron-converter_SDK_25.03 --yes ;
	sleep 1; 
done; 

