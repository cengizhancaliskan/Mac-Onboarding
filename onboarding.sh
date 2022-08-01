echo "Creating workspace folders" \\
mkdir /Users/$USER/Workspace /Users/$USER/Workspace/ai /Users/$USER/Workspace/api /Users/$USER/Workspace/app /Users/$USER/Workspace/playground /Users/$USER/Workspace/projects /Users/$USER/Workspace/scripts /Users/$USER/Workspace/www \\
&& xcode-select --install \\

&& echo "Installing Homebrew" \\
&& /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Bash v5" # mac os using version 3
brew install bash

echo "Installing Wget"
brew install wget

echo "Installing htop"
brew install htop

echo "Settings up zshrc configs"
wget https://gist.githubusercontent.com/cengizhancaliskan/4801bb8c9c8cf0e974f2acd7da756459/raw/0eca94101947a18c349c62562cec6ee52313319e/.zshrc > ~/.zshrc.new
mv .zshrc .zshrc.backup
mv .zshrc.new .zshrc

echo "Installing Git with homebrew"
brew install git

echo "Installing iTerm2"
brew install iterm2

echo "Installing ZSH & Oh My ZSH"
brew install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installiing Zsh Autosuggestions plugin"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing Zsh Completions plugin"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

echo "Installing Zsh Sytntax highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing Alfred"
brew install alfred

echo "Installing Itsycal"
brew install itsycal

echo "Installing Spectacle"
brew install spectacle

echo "Installing Stremio"
brew install stremio

echo "Installing GoLang"
brew install go

#echo "Installing Java 1.8"
#brew cask install homebrew/cask-versions/adoptopenjdk8

#echo "Installinig .NET"
#brew cask install dotnet dotnet-sdk
# For installing older version
#brew tap isen-ng/dotnet-sdk-versions
#brew cask install dotnet-sdk-2.2.100

echo "Installing Docker Desktop"
brew install docker

echo "Installing Minikube"
brew install minikube

echo "Installing NVM"
brew install nvm
#Settings nvm
mkdir ~/.nvm

echo "Installing Pyenv"
brew install pyenv pyenv-virtualenv

echo "Installing jEnv"
brew install jenv

echo "Installing SublimeText"
brew install sublime-text

echo "Installing F.lux"
brew install flux

echo "Installing Brave Browser"
brew install brave-browser

echo "Installing LastPass"
brew install lastpass

echo "Installing Spotify"
brew install spotify

echo "Installing PyCharm"
brew install pycharm

echo "Installing GoLand"
brew install goland

echo "Installing DataGrip"
brew install datagrip

echo "Installing CodeRunner"
brew install coderunner

echo "Installing Ferdi (An alternative of Franz)"
brew install ferdi

#echo "Installing Studio 3T"
#brew install studio-3t

echo "Installing tldr"
brew install tldr

echo "Installing IINA"
brew install iina

echo "Installing The Unarchiver"
brew install the-unarchiver

echo "Installing VSCode"
brew install visual-studio-code

#echo "Installing Macs Fan Control"
#brew install macs-fan-control

## Create global gitignore
echo "Creating a global gitignore.."
git config --global core.excludesfile ~/.gitignore
touch ~/.gitignore
echo '.DS_Store' >> ~/.gitignore
echo '.idea' >> ~/.gitignore
echo "Global gitignore created"

## Settings git global config
#echo "Git global identity settings..."
#git config --global user.name "Cengizhan Çalışkan"
#git config --global user.email "cengizhancaliskan@gmail.com"

# Brew cleanup
brew cleanup -s

echo "Onboarding successfully completed."
echo "Yaaay"
echo "Lets go rockstar!!"
