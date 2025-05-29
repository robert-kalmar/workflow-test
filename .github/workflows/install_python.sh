echo "CI: Installing Python 3.10..."

sudo apt update
sudo apt install -y build-essential libncursesw5-dev libreadline-gplv2-dev libssl-dev libgdbm-dev libc6-dev libsqlite3-dev libbz2-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
$HOME/.pyenv/bin/pyenv install 3.10

echo "CI: Python 3.10 succesfully installed."

