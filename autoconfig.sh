# emerge app-admin/sudo
#  visudo: tankywoo ALL=(ALL) NOPASSWD:ALL
# emerge vim
# emerge dev-vcs/git
# emerge dev-db/mysql
# emerge app-shells/zsh
# emerge -av dev-python/ipython

git clone git@github.com:tankywoo/linux-autoconfig.git ~/.linux-autoconfig
cd ~/.linux-autoconfig

git clone git@github.com:tankywoo/vimconf.git ~/.vim

ln -s /home/tankywoo/.linux-autoconfig/.screenrc /home/tankywoo/.screenrc
git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s .zshrc ~/.zshrc
ln -s /home/tankywoo/.linux-autoconfig/.zshrc /home/tankywoo/.zshrc
chsh -s /bin/zsh
source ~/.zshrc


