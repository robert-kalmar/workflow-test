set +vx
echo "CI: Installing Python 3.10..."

pwd
uname -a
sudo apt update
# sudo apt install -y build-essential libncursesw5-dev libreadline-gplv2-dev libssl-dev libgdbm-dev libc6-dev libsqlite3-dev libbz2-dev libffi-dev liblzma-dev
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev tk-dev

curl https://pyenv.run | bash
$HOME/.pyenv/bin/pyenv install 3.10 3.11 3.12

$HOME/.pyenv/bin/pyenv global 3.10 3.11 3.12

# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
# echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
# echo 'eval "$(pyenv init - bash)""' >> ~/.profile
#
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
# echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
# echo 'eval "$(pyenv init - bash)""' >> ~/.bash_profile
#
#
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >>  ~/.bashrc
# echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >>  ~/.bashrc
# echo 'eval "$(pyenv init - bash)""' >>  ~/.bashrc

echo "CI: Pythons succesfully installed."

