#!/bin/bash

echo '-> nala'

sudo apt install nala -y

echo '-> bat'

cd ~/Downloads && curl https://github.com/sharkdp/bat/releases/download/v0.22.1/bat_0.22.1_amd64.deb --output bat_0.22.1_amd64.deb && dpkg bat_0.22.1_amd64.deb 

echo '-> Zsh'

sudo apt install zsh -y && chsh -s $(which zsh)

echo '-> you should logoff'

echo '-> OhMyZsh'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '-> OhMyZsh - plugin zsh-autosuggestion'

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo '-> OhMyZsh - plugin zsh-syntax-highlighting'

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo '-> nerd font'

sudo apt install fonts-firacode

echo $'-> set VsCode "editor.fontFamily": "\'Fira Code\'", "editor.fontLigatures": true'

# cd ~/Downloads && curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip --output FiraCode.zip 

echo '-> antigen'

curl -L git.io/antigen > antigen.zsh

# source "/path-to-your/antigen.zsh"

echo '-> spaceship'

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 && ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo '-> set ZSH_THEME="spaceship" into .zshrc'

echo '-> starship'

curl -sS https://starship.rs/install.sh | sh

echo '-> set eval "$(starship init zsh)" at the end of .zshrc'

echo '-> powerlevel10k'

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo '-> ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc'

echo '-> httpie'

sudo apt install httpie -y

echo '-> jq'

sudo apt install jq -y

echo '-> exa'

sudo apt install exa -y

echo '-> cheat'

cd ~/Downloads \
  && wget https://github.com/cheat/cheat/releases/download/4.3.3/cheat-linux-amd64.gz \
  && gunzip cheat-linux-amd64.gz \
  && chmod +x cheat-linux-amd64 \
  && sudo mv cheat-linux-amd64 /usr/local/bin/cheat

echo '-> cheat.sh'

curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh

sudo apt install rlwrap -y

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

cd ~/Downloads && curl https://github.com/dandavison/delta/releases/download/0.11.3/git-delta_0.11.3_amd64.deb --output git-delta_0.11.3_amd64.deb && dpkg git-delta_0.11.3_amd64.deb

echo '-> brew'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/learningprocesss/.profile && echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/learningprocesss/.profile && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo '-> fx'

brew install fx

echo '-> yq'

brew install yq

echo '-> azuredatastudio'

curl 'https://go.microsoft.com/fwlink/?linkid=2187522'

echo '-> flameshot'

sudo apt install flameshot

echo '-> peek'

sudo add-apt-repository ppa:peek-developers/stable && sudo apt update && sudo apt install peek