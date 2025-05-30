set +vx

pwd

eval "$($HOME/.pyenv/bin/pyenv init - bash)"

for i in {1..10}; do
	echo "Attempt $i"; 
	pip3.$1 install --extra-index-url https://eiq.nxp.com/repository neutron_converter_SDK_25_03 --no-cache-dir;
	pip3.$1 uninstall neutron-converter_SDK_25.03 --yes ;
	sleep 1; 
done; 

