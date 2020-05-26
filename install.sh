# !/bin/sh 



if [ -f ~/.tmux.conf ]; then
    echo "正在备份：" ~/.tmux.conf "==>" ~/.tmux.conf.bak
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi

if [ -f ~/.tmux.conf.local ]; then
    echo "正在备份：" ~/.tmux.conf.local "==>" ~/.tmux.conf.local.bak
    mv ~/.tmux.conf.local ~/.tmux.conf.local.bak
fi
if [ -f ~/.zshrc ]; then
    echo "正在备份：" ~/.zshrc "==>" ~/.zshrc.bak
    mv ~/.zshrc  ~/zshrc.bak
fi

if [-f ~/.oh-my-zsh ]; then
    echo "正在备份：" ~/.oh-my-zsh "==>" ~/.oh-my-zsh.bak
    mv ~/.oh-my-zsh ~/.oh-my-zsh.bak
fi
if [-f ~/.config/nvim ]; then
    
    echo "正在备份：" ~/.config/nvim "==>" ~/.config.nvim.bak
    mv ~/.config/nvim ~/.config/nvim.bak
fi



echo "安装tmux配置文件"
ln -s ./tmux/.tmux.conf ~/.tmux.conf
ln -s ./tmux/.tmux.conf.local ~/.tmux.conf.local
echo "安装zsh配置文件"
ln -s ./zsh/.zshrc ~/.zshrc
ln -s ./zsh/.oh-my-zsh ~/.oh-my-zsh
echo "安装nvim配置文件"
ln -s ./nvim ~/.config/nvim

