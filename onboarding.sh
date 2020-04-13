xcode-select --install

echo "Installing Wget"
brew install wget

echo "Installing htop"
brew install htop

echo "Settings up zshrc configs"
wget https://gist.githubusercontent.com/cengizhancaliskan/4801bb8c9c8cf0e974f2acd7da756459/raw/0eca94101947a18c349c62562cec6ee52313319e/.zshrc > ~/.zshrc

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing GoLang"
brew install go

echo "Installinig .NET"
brew cask install dotnet dotnet-sdk
# For installing older version
brew tap isen-ng/dotnet-sdk-versions
brew cask install dotnet-sdk-2.2.100

echo "Installing Git with homebrew"
brew install git

echo "Installing iTerm2"
brew cask install iterm2

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
brew cask install alfred

echo "Installing Itsycal"
brew cask install itsycal

echo "Installing Spectacle"
brew cask install spectacle

echo "Installing Docker Desktop"
brew cask install docker

echo "Installing Minikube"
brew install minikube

echo "Installing NVM"
brew install nvm
#Settings nvm
mkdir ~/.nvm

echo "Installing Pyenv"
brew install pyenv pyenv-virtualenv

echo "Installiing SublimeText"
brew cask install sublime-text

echo "Installiing F.lux"
brew cask install flux

echo "Installiing Chrome"
brew cask install google-chrome

echo "Installiing Firefox"
brew cask install firefox

echo "Installiing Evernote"
brew cask install evernote

echo "Installiing LastPass"
brew cask install lastpass

echo "Installiing Spotify"
brew cask install spotify

echo "Installiing PyCharm"
brew cask install pycharm

echo "Installiing CodeRunner"
brew cask install coderunner

echo "Installiing Franz"
brew cask install franz

echo "Installiing Studio 3T"
brew cask install studio-3t

echo "Installing tldr"
brew install tldr

echo "Installing IINA"
brew cask install iina

echo "Installing The Unarchiver"
brew cask install the-unarchiver

#echo "Installing VSCode"
#brew cask install visual-studio-code

#echo "Installing Atom"
#brew cask install atom

## Create global gitignore
echo "Creating a global gitignore.."
git config --global core.excludesfile ~/.gitignore
touch ~/.gitignore
echo '.DS_Store' >> ~/.gitignore
echo '.idea' >> ~/.gitignore
echo "Global gitignore created"

## Settings git global config
echo "Git global identity settings..."
git config --global user.name "Cengizhan Çalışkan"
git config --global user.email "cengizhancaliskan@gmail.com"

# Brew cleanup
brew cleanup -s

echo "Onboarding successfully completed."
echo "Yaaay"
echo "Lets go rockstar!!"
