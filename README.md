# lrc [![lrc-v1.3.1](https://img.shields.io/badge/lrc-v1.3.1-blue.svg)](https://github.com/bonjourcs/lrc)
lrc是本人的Vim配置备份文件，使用[Vundle](https://github.com/VundleVim/Vundle.vim)进行插件管理。

# 预备工具
- Git
- Vundle

# 安装
## 安装Git
Git的详细配置教程可以在[ProGit(中文版)](http://git.oschina.net/progit/)找到，使用lrc时，只需要在[Git官网](https://git-scm.com/downloads)下载合适的版本，并把git命令加入[环境变量](https://zh.wikipedia.org/wiki/%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F)中即可。
## 安装Vundle
- Linux
在终端输入：
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
- Windows
在命令行中输入：
```
git clone https://github.com/VundleVim/Vundle.vim.git C:\Users\<你的用户名>\.vim\bundle\Vundle.vim
```
如果克隆Vundle仓库到本地出现`目录不存在`提示，请手动在家目录(Linux)或者用户目录(Windows)下创建「.vim/bundle/Vundle.vim」级联目录
## 使用lrc
I. 克隆lrc到本地
在任意一个Windows/Linux目录(**DIR**)，打开命令提示行/终端，输入如下脚本：
```
git clone https://github.com/bonjourcs/lrc.git
```
II. 复制.vimrc到用户目录
- Linux下使用如下脚本
```
cp <DIR>/lrc/.vimrc ~/.vimrc
```
- Windows使用如下脚本
```
copy <DIR>/lrc/.vimrc c:\users\<用户名>\_vimrc
```
III.安装插件
打开一个Vim/gVim窗口，在命令模式下输入
```
:PluginInstall
```

# 待办事项

- [ ] 编写install.sh自动安装
- [ ] 编写配置脚本，管理已经安装的插件 


# 更新列表
- v1.3.1
整理lrc安装文档
- v1.3
使用solarized主题 并使用了诸如[NERDTree](https://github.com/scrooloose/nerdtree)之类有用的插件
添加了新建文件按<F4>自动添加文件头
- v1.2
使用中文注释
- v1.1
增加Vundle安装说明
- v1.0
使用.vimrc单独配置文件，取消.vundle.rc文件引用方式
