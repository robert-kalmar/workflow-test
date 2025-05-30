set +vx
echo "CI: Installing Python 3.10..."

pwd
uname -a
sudo apt update
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev tk-dev

curl https://pyenv.run | bash
$HOME/.pyenv/bin/pyenv install 3.10 3.11 3.12
$HOME/.pyenv/bin/pyenv global 3.10 3.11 3.12

echo "CI: Pythons succesfully installed."

