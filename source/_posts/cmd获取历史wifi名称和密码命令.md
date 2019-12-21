---
layout: post
title: cmd获取历史wifi名称和密码命令
date: 2017-08-04 10:00:00
updated: 2017-08-04 10:00:00
# comments: true
# permalink: 
# music: 
# keywords: 
description: for /f "skip=9 tokens=1,2 delims=:" %i in ('netsh wlan show profiles') do  @echo %j | findstr -i -v echo | netsh wlan show profiles %j key=clear

categories: [Dev, PowerShell]
tag: [Dev, PowerShell]
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

1. 按下组合键 ` Win + R `   
2. 在打开的窗口中输入 ` cmd ` 并回车  
3. 将下列代码复制粘贴到打开的黑色背景的窗口中并回车即可  
```
for /f "skip=9 tokens=1,2 delims=:" %i in ('netsh wlan show profiles') do  @echo %j | findstr -i -v echo | netsh wlan show profiles %j key=clear
```

---
**版权声明**  
创作站点：[ezhq.xyz](http://ezhq.xyz/)  
本文作者：[ezhq](mailto:ezhq@outlook.com)  
本文链接：[http://ezhq.xyz/2017/08/04/cmd获取历史wifi名称和密码命令/](http://ezhq.xyz/2017/08/04/cmd获取历史wifi名称和密码命令/)  
版权备注：任何形式使用本作品需保留本完整版权声明，使用本作品前应先和作者取得联系并说明用途，取得作者同意后方可使用。详细了解请点击上方本文作者以取得邮箱联系。