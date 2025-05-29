set +vx

pwd
echo `which python` 
python --version
for i in {1..10}; do
	echo "Attempt $i"; 
	pip install --extra-index-url https://eiq.nxp.com/repository neutron-converter_SDK_25_03 --no-cache-dir;
	pip uninstall neutron_converter_SDK_25.03 --yes ;
	sleep 1; 
done; 

