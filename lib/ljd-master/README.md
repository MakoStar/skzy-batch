## 简述说明

代码来自 https://github.com/zzwlpx/ljd

简单修改了下对 `\xa0` 报错的问题以及屏蔽了部分代码解决了读头报错的问题(机灵

使用说明：python main.py  "path of luajit-bytecode"

<!-- py -3 main.py input output -->

## 获取脚本

获取 lua 脚本需要用到 [AssetStudio](https://github.com/Perfare/AssetStudio)

利用 AssetStudio 读取游戏的资源文件

需要用到其它资源(比如图片icon、模型等)可以选择 Export > All assets

只要脚本文件 可以选择菜单栏的 Filter Type > TextAsset 然后选择 Export > Selected assets

最后会得到一个 TextAsset 的文件夹 里面就包含脚本文件

关于需要使用到的脚本回头单独建个仓库说明！
