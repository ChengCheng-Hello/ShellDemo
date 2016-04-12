# Shell学习纪录
背景：因为公司的项目分好多SDK（9个），也就是9个仓库地址。
要统一打包的时候，就要一个个切换分支，拉代码，很麻烦。很容易漏掉一个。
所以参考网上的一些示例，写了几个脚本，在这里纪录一下。

### 参考资料
- [Shell脚本编程30分钟入门](https://github.com/qinjx/30min_guides/blob/master/shell.md)
- [Shell中的函数调用](http://blog.csdn.net/ljianhui/article/details/9333443)

### 实例
1. batch_branch.sh：根据用户输入的分支名称，实现批量创建分支，push分支，删除本地分支，删除远程分支
2. batch_co_pl.sh：根据用户输入的分支名称，实现批量切分支并拉取最新代码
3. batch_push.sh：根据用户输入的分支名称，实现批量切分支，提交代码

