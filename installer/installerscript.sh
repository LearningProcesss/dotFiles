#!/bin/bash

echo '-> Zsh'

sudo apt install zsh -y

echo '-> OhMyZsh'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '-> OhMyZsh - plugin zsh-autosuggestion'

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo '-> OhMyZsh - plugin zsh-syntax-highlighting'

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo '-> httpie'

sudo apt install httpie -y

echo '-> jq'

sudo apt install jq -y

echo '-> GithubCli'

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y

echo '-> firecamp'

wget --header="Content-Type: application/vnd.appimage" https://firecamp.ams3.digitaloceanspaces.com/versions/linux/Firecamp-2.3.1.AppImage

echo '-> chrome'

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb

echo '-> brave'

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

echo '-> git delta plugin'

curl 'https://github.com/dandavison/delta/releases/download/0.11.3/git-delta_0.11.3_amd64.deb'

cd ~/Downloads && curl https://github.com/dandavison/delta/releases/download/0.11.3/git-delta_0.11.3_amd64.deb --output git-delta_0.11.3_amd64.deb
