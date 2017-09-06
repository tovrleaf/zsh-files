git clone git://github.com/tovrleaf/zsh-files.git ~/.zsh

echo source ~/.zsh/setup-config.zsh >> ~/.zshrc

sudo chsh -s $(which zsh) $(whoami)

cdz && ./setup-init.zsh

Also, remember to run scm_breeze/install.sh
