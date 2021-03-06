# 中国矿业大学（北京） XeLaTeX 学位论文模板
CUMTB Thesis Template for Graduation Project (Undergraduate) 

依照[教务处最新（2021/1/19）规范](https://jwc.cumtb.edu.cn/info/1014/2205.htm)完成。

参考文献样式使用[国标GB/T 7714-2005](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style)。

目前提供**本科毕业设计（论文）的正文模板**。封面及诚信声明、授权使用书等请使用在`cover`文件夹下对doc文件进行编辑。

请使用 XeTeX 引擎和 UTF-8 字符编码。

## 使用
请先安装最新版本的TeX Live，安装过程可参考[cying的文章](https://zhuanlan.zhihu.com/p/41855480)，推荐使用[TUNA镜像](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/)。安装过程较为漫长。
### 方法1：一键编译
- 点击运行 `content` 文件夹下的 `build_thesis.cmd`

- 如运行遇到问题，尝试以管理员身份打开
### 方法2：在TexLive环境下编译 

- 若使用`VS code`，在json配置文件中加入
```
"latex-workshop.latex.tools": [
    {
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
        ]
    }
],
"latex-workshop.latex.recipes": [
    {
        "name": "xelatex -> bibtex -> xelatex*2",
        "tools": [
            "xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
        ]
    }
]
```

- 若使用`TeXworks editor`，编译顺序`xelatex` -> `bibtex` -> `xelatex` -> `xelatex`

- 推荐使用`Visual Studio code`+`TeX Live`的组合

## Q&A
## Work Being Done
- [ ] 正文前页面的制作
- [ ] 编写模板类，接口留出，实现隐去
- [ ] 证明环境的编辑
- [ ] 转为 mian.tex-(part.tex)s 的总分模式
- [ ] 硕士、博士毕业论文制作
