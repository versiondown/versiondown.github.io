---
layout: post
title: MDN“学习Web开发”教程中网站提交的补充
date: 2017-04-16 22:00:00
updated: 2017-04-16 22:00:00
# comments: true
# permalink: 
# music: 
# keywords: 
description: 关于教程中网站发布过程中一些具体细节的问题解决

categories: [Dev, Web]
tag: [Dev, Web, Git]
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

> 最新更新：20170416
  

## 简要说明  
* 这篇博客是关于 MDN > 学习Web开发 > Web开发入门 > 发布网站 这一教程的补充。  
* 补充/解决问题内容：用 Git 发布之前做好的网站的过程实现。  
  

## 问题说明  

MDN中关于网站发布选用的方法是使用在线工具GitHub，本身并没有什么问题，对于入门者也比较合适（免费，方便，实现过程容易描述）。但是教程对于提交网站文件的描述是较为模糊的。在亲自按照教程实现后，发现有很大几率并不能实现教程设想的结果。  
问题点：  
* 教程中是直接用命令行提交的网站文件，但是对于计算机和自己的GitHub账号绑定并设置密钥没有提及，而这个又会影响到网站文件的提交。  
* 此情况适用于自己电脑在之前并没有安装过Git及绑定GitHub账号的情况。  
  
## 问题解决  

1. Git安装  
这个步骤按照教程走没太大问题，直接安装Git即可。GitHub建立仓库也没太大问题，需要注意的是Repository name 填写的时候要准确填写自己的GitHub用户名（若你的用户名为“John”,则填写内容为“John.github.io”）.然后点击“Create repository”创建仓库即可。  

2. 将文件上传到 GitHub  
教程中这部分是容易出问题的地方。按照教程来走，很容易失败，达不到最终理想效果。  
在参照教程中“将文件上传到GitHub”这部分之前，最好先进行下面步骤3“绑定GitHub账号”的操作。  

3. 绑定GitHub账号  
* 打开Git命令窗口：在桌面右键，选择“Git Bash Here”，打开命令窗口。  
* 创建密钥步骤1：输入命令 `ssh-keygen -t rsa -C "your_email@example.com"`(操作中要将命令中双引号里的your_email@example替换为你自己GitHub绑定的邮箱地址)。  
* 创建密钥步骤2: 当窗口弹出 `Enter file in which to ...` 的命令时候，可以直接按下回车Enter键即可；然后弹出 `Enter passphrass ...` 时可以直接按下回车键；弹出 `Enter same passphrase ...` 时直接按下回车键。  
* 此时命令窗口会显示 `Your identification has been ...` 的信息，这时候输入命令 `clip < ~/.ssh/id_rsa.pub` 并回车（此步骤是复制公钥信息以备下个步骤使用）。  
* 给自己GitHub账号添加SSH密钥信息：在GitHub网站主页点击右上角自己的头像，在弹出的菜单中选择“Settings”,在新的网页中左侧列表里选择“SSH and GPG keys”,然后在右侧点击绿色按钮“New SSH key”,在出现的界面中Tittle里随意填写个名字（如MDNWebSSH），在Key框内直接进行粘贴操作即可（在框内鼠标右键点击，选择“粘贴”即可，因为上一个步骤里已经通过命令行复制了相关信息），最后点击下面的绿色按钮“Add SSH key”即可。  

4. 提交网站文件  
* 在自己的网站文件夹里，右键选择“Git Bash Here”打开Git命令窗口。  
* 对于MDN教程中“将文件上传到GitHub”步骤一 `cd Desktop...` 的命令可以忽略。  
* 之后的命令从步骤二中的“git init”开始可以往后，可以直接参照教程进行操作，就不会有太大问题。  
  
---
**版权声明**  
创作站点：[ezhq.xyz](http://ezhq.xyz/)  
本文作者：[ezhq](mailto:ezhq@outlook.com)  
本文链接：[http://ezhq.xyz/2017/04/16/MDN“学习Web开发”教程中网站提交的补充/](http://ezhq.xyz/2017/04/16/MDN%E2%80%9C%E5%AD%A6%E4%B9%A0Web%E5%BC%80%E5%8F%91%E2%80%9D%E6%95%99%E7%A8%8B%E4%B8%AD%E7%BD%91%E7%AB%99%E6%8F%90%E4%BA%A4%E7%9A%84%E8%A1%A5%E5%85%85/)  
版权备注：任何形式使用本作品需保留本完整版权声明，使用本作品前应先和作者取得联系并说明用途，取得作者同意后方可使用。详细了解请点击上方本文作者以取得邮箱联系。