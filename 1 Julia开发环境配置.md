# 开发环境配置

## 集成开发环境

`julia` 的集成开发环境`IDE`有多种，比如
* 寄生在`Atom`中的`uber-juno`
* `Visual Studio Code+Julia`插件方式实现的开发环境

Juno虽然是官方的`IDE`，但安装步骤稍微多一点，不仅安装插件，而且还需要安装Atom.jl包。有时候因为网络的原因，安装很费时费力。笔者在自己电脑上安装时总出现`julia-client`安装失败，所以我决定使用`Visual Studio Code+Julia`插件的方式来实现

## 配置`Visual Studio Code+Julia`插件

步骤比较简单：  
1. 安装 [`Visual Studio Code`](https://code.visualstudio.com/)，直接下载安装就可以了
2. 安装`julia`插件。打开`Visual Studio Code`后在文件->扩展（或者快捷键`ctrl+shift+x`）打开扩展安装器，输入`julia`在扩展商店中查找，找到后(注意，正确的插件说明是`Julia Language Support`)直接点击安装即可
3. 插件安装完成后需要配置开发环境路径。如果`julia`的安装路径已经在系统的`PATH`环境变量中，则`julia`插件应该能够自动找到它。如果`julia`插件找不到`julia`的安装路径，则需要手动配置。方法为在`Ctrl+,`打开`Visual Studio Code`的设置面板（也可以通过文件->首选项->设置 来进入到该界面），在用户设置`user settings`中加入入选代码
`"julia.executablePath":"D:/Program Files/Julia-1.0.0/bin"`， 其中`"D:/Program Files/Julia-1.0.0/bin"`是`julia`在你电脑上实际的安装路径。注意反斜线的写法，要么换成`/`要么是`\\`，windows默认的`/`不行。
4. 重启`Visual Studio Code`。

至此，所有的配置工作就已经完成了，接下来就是试一下刚刚配置的开发环境了。