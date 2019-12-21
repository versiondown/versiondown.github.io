---
layout: post
title: Hexo博客Next主题加入网易云音乐播放器
date: 2016-12-24 22:00:00
updated: 2016-12-24 22:00:00
# comments: true
# permalink: 
# music: 
# keywords: 
description: 关于在Hexo博客框架Next主题下添加网易云音乐播放器教程。

categories: [Guide, Hexo]
tag: [Guide, Hexo]
toc: true
excerpt: ''
popular_posts: false
mathjax: false
top: false
thumbnail: false

meta:
  top: false  # 这代表隐藏置顶标签，如果本文设置了置顶，就默默置顶
  author: true # 这代表隐藏作者标签
  date: true # 这代表隐藏日期标签，不显示发布日期
  categories: true # 这代表隐藏分类标签，不显示文章分类
  counter: true # 这代表隐藏阅读计数标签，不显示阅读次数
  updated: true # 这代表隐藏更新日期标签，不显示文章更新日期
  share: true # 这代表隐藏分享标签，不显示分享按钮
  tags: true # 这代表隐藏文章标签，不显示文章的tags
---

<!--more-->

  
> 最新更新：20170309

## 一 简要介绍  
本方法适用于对Hexo框架网站添加网易云音乐播放器插件，本例在Hexo框架的Next主题下进行，将网易云音乐插件添加到侧边栏上。另外，浏览器广告拦截插件有一定几率造成插件不加载。  

## 二 选择音乐  
1. 在网易云音乐网页版上选择想要布置的音乐（这里以Family of the Year的《Hero》为例）；  
2. 在歌曲详细页上点击“生成外链播放器”；  
{% asset_img aurdes_01.png 1.Example %}  
3. 对插件进行个性化修改（建议为了网站浏览体验，，取消自动播放），并点击“复制代码”；  
{% asset_img aurdes_02.png 2.Example %}  

## 三 修改网页样式文件  
1. 打开本地网页Hexo文件夹内的sidebar.swig文件，具体目录为：Hexo\themes\Next\layout\_macro\sidebar.swig（注：本路径中Next为自己的网页主题文件夹名，不同主题名称不同，路径都类似。）  
2. 在打开的sidebar.swig文件如图合适位置上粘贴上面复制的代码。  
{% asset_img aurdes_03.png 3.Example %}   
3.在主目录下执行Git Bash命令,完成修改后文件上传：
```bash
hexo clean
hexo g
hexo d
```
## 四 最终效果  
{% asset_img aurdes_04.png 4.Example %}  

---
**版权声明**  
创作站点：[ezhq.xyz](http://ezhq.xyz/)  
本文作者：[ezhq](mailto:ezhq@outlook.com)  
本文链接：[http://ezhq.xyz/2016/12/24/Hexo添加网易云音乐/](http://ezhq.xyz/2016/12/24/Hexo%E6%B7%BB%E5%8A%A0%E7%BD%91%E6%98%93%E4%BA%91%E9%9F%B3%E4%B9%90/)  
版权备注：任何形式使用本作品需保留本完整版权声明，使用本作品前应先和作者取得联系并说明用途，取得作者同意后方可使用。详细了解请点击上方本文作者以取得邮箱联系。