rm -rf ~/.vim
rm ~/.vimrc
git clone https://github.com/AlxndrPsclt/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Vim installation is nearly over"
echo "Just open vim and run :PluginInstall."
