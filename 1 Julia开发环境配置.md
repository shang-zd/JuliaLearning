# 开发环境配置

## 集成开发环境

`julia` 的集成开发环境`IDE`有多种，比如
* 寄生在`Atom`中的`uber-juno`
* `Visual Studio Code+Julia`插件方式实现的开发环境
* JuliaPro

## 配置`juno`集成开发环境
Juno虽然是官方的`IDE`，但安装步骤稍微多一点，不仅安装插件，而且还需要安装Atom.jl包。有时候因为网络的原因，安装很费时费力。  
主要步骤如下：
1. [下载julia](https://julialang.org/),完成后安装julia，细节略。
2. [下载Atom](https://atom.io/)，安装Atom。
3. 点击`Julia`在桌面创建的快捷方式，进入Julia交互式环境，输入以下指令添加`Atom`包。如果出现错误，请参考文末的常见问题
 > `Pkg.update()`  
 > `Pkg.add("Atom")`  
 > `using Atom`
4. 打开Atom，安装Julia插件。可以使用`ctrl + ,`从设置中找到`install`，搜索`uber-juno`，然后安装，`uber-juno`会自动配置好相关的其它包  
5. 重启`Atom`，会发现在菜单栏多出来一个`Julia`的子菜单，里面包括了`julia`开发中常用的命令，如启动，运行等等，同时会发现`Atom`左侧也发生了相应的变化。

**外部资料** 另外，[这里](https://zhuanlan.zhihu.com/p/22436523)有人做好了一个有截图的教程，可以参考


## 配置`Visual Studio Code+Julia`插件

步骤比较简单：  
1. [下载julia](https://julialang.org/),完成后安装julia，细节略
2. 安装 [`Visual Studio Code`](https://code.visualstudio.com/)，直接下载安装就可以了
3. 安装`julia`插件。打开`Visual Studio Code`后在文件->扩展（或者快捷键`ctrl+shift+x`）打开扩展安装器，输入`julia`在扩展商店中查找，找到后(注意，正确的插件说明是`Julia Language Support`)直接点击安装即可
4. 插件安装完成后需要配置开发环境路径。如果`julia`的安装路径已经在系统的`PATH`环境变量中，则`julia`插件应该能够自动找到它。如果`julia`插件找不到`julia`的安装路径，则需要手动配置。方法为在`Ctrl+,`打开`Visual Studio Code`的设置面板（也可以通过文件->首选项->设置 来进入到该界面），在用户设置`user settings`中加入入选代码
`"julia.executablePath":"D:/Program Files/Julia-1.0.0/bin/julia.exe"`， 其中`"D:/Program Files/Julia-0.6.4/bin"`是`julia`在你电脑上实际的安装路径。注意反斜线的写法，要么换成`/`要么是`\\`，windows默认的`/`不行。
5. 重启`Visual Studio Code`。

至此，所有的配置工作就已经完成了，接下来就是试一下刚刚配置的开发环境了。

`ctrl + shift + p`，输入`julia start REPL`即可

## 常见问题

1. v1.0.0版本的julia目前还不被该extension支持，所以建议使用最近的v0.6.4版本
2. 如果在进行package操作时出现如下错误，运行[`EasyFix`](https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1-1-and-tls-1-2-as-a-default-secure-protocols-in)工具试试，如果不好使，请查看[对该问题的讨论](https://github.com/JuliaLang/julia/issues/26167)
>Cloning METADATA from https://github.com/JuliaLang/METADATA.jl
>ERROR: GitError(Code:ECERTIFICATE, Class:OS, user cancelled certificate check: )
3. 无法使用`Pkg`

有可能是`Pkg`没有安装，尝试:
  > `Pkg.add(Pkg)`   

也有可能是没有声明使用`Pkg`，尝试
  * `using Pkg`
  * `Pkg.update()`

如果仍然不好使，尝试上一条中的[`EasyFix`](https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1-1-and-tls-1-2-as-a-default-secure-protocols-in)工具，然后再尝试上面所说的两种情况


4. 无法在`Atom`中打开REPL
>Press Enter to start Julia.  
Hold on tight while we’re installing some packages for you.  
This should only take a few seconds…  
ERROR: LoadError: The following package names could not be resolved:  
Atom (not found in project, manifest or registry)
Please specify by known name=uuid.  

这是Pkg包的一个bug，解决方法为在`julia`自带的RPEL中输入如下指令:  
`rm(joinpath(homedir(), ".julia", "registries"); recursive=true)`
然后再执行
> `using Pkg`
> `Pkg.update()`  
> `Pkg.add("Atom")`  
> `using Atom`
