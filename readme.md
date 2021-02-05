# WHy I Can set up my environment so smootHly - [.whichRC](https://github.com/Yescafe/.whichrc)

这个标题是我扯的，这是一个中文仓库。

## 为什么要使用 .whichrc

我们知道终端软件基本上都有一个启动脚本（RC 脚本），比如 zsh 的 `.zshrc`、bash 的 `.bashrc`；或者是一些软件也有他们的 RC 脚本，比如 Anaconda 的 `.condarc`、Vim 的 `.vimrc`。我整理了一些我经常使用的软件启动脚本，当然也不局限于以 `.rc` 后缀出现的文件。以便于我在重置系统或者迁移环境时，一键搭建环境（至少通过看 RC 文件里有哪些配置了解我需要哪些环境、软件）。

## 如何使用我的 .whichrc

首先 clone 这个仓库。因为里面有套娃仓库，所以在此就不同步一份 Gitee 映像了。

注意，需要进行递归克隆以克隆 submodules：

```bash
git clone --recursive https://github.com/Yescafe/.whichrc ~/.whichrc
```

然后执行：

```bash
~/.whichrc/auto-ln.sh
```

这个脚本会将这个仓库中的文件链接到它们应该存在的位置。源文件将备份到 `.whichrc/bak-$timestamp` 下。