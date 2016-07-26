# lrc <img src="https://img.shields.io/badge/lrc-v1.2-blue.svg">
lrc是本人的Vim配置备份文件，使用[Vundle](https://github.com/)进行插件管理。
# Required
- Git
- Vundle
# Installation
## Git
我假设你已经配置好了本地Git
## Vundle
安装[Vundle](https://github.com/)最简单的方式就是在终端(Liunx)输入
```
git clone https://github.com/VundleVim/Vundle.vim.git
~/.vim/bundle/Vundle.vim
```
或者在命令提示符(Windows)里输入
```
git clone https://github.com/VundleVim/Vundle.vim.git
C:\Users\<你的用户名>\.vim\bundle\Vundle.vim
```
如果克隆Vundle仓库到本地出现`目录不存在`提示，请手动在家目录(Linux)或者用户目录(Windows)下创建「.vim/bundle」目录
## 安装lrc
在终端(Linux)或者命令提示符(Windows)里输入
```
git clone https://github.com/bonjourcs/lrc.git 「任何你喜欢的目录」
```
然后执行
```
cp 「任何你喜欢的目录」/lrc/.vimrc ~/.vimrc
```
最后打开一个Vim/gVim窗口，在命令模式下输入
```
PluginInstall
```
# Update List
- v1.2
使用中文注释
- v1.1
增加Vundle安装说明
- v1.0
使用.vimrc单独配置文件，取消.vundle.rc文件引用方式
