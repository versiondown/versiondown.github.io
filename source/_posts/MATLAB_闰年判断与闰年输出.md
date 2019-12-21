---
layout: post
title: MATLAB_闰年判断与闰年输出
date: 2016-09-19 12:00:00
updated: 2017-03-09 12:00:00
# comments: true
# permalink: 
# music: 
# keywords: 
description: 关于MATLAB，关于闰年

categories: [Dev, MATLAB]
tag: [Dev, MATLAB]
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

### 代码  
[下列代码仅供参考](RunNian_ezhq.m)  

```matlab
%RunNian1900-2016_ezhq
function leapyear
for year = 1900:2016
  sign = 0;
  a = rem(year,400);
  b = rem(year,4);
  c = rem(year,100);
  if a == 0
    sign = sign + 1;
  end
  if b == 0
    sign = sign + 1;
  end
  if c == 0
    sign = sign - 1;
  end
  if sign == 1
    fprintf('%4d \n',year)
  end
end
```
  
### 运行结果  
运行结果截图  
{% asset_img RunNian_ezhq.jpg 运行结果 %}  

---
**版权声明**  
创作站点：[ezhq.xyz](http://ezhq.xyz/)  
本文作者：[ezhq](mailto:ezhq@outlook.com)  
本文链接：[http://ezhq.xyz/2016/09/19/MATLAB_闰年判断与闰年输出/](http://ezhq.xyz/2016/09/19/MATLAB_%E9%97%B0%E5%B9%B4%E5%88%A4%E6%96%AD%E4%B8%8E%E9%97%B0%E5%B9%B4%E8%BE%93%E5%87%BA/)  
版权备注：任何形式使用本作品需保留本完整版权声明，使用本作品前应先和作者取得联系并说明用途，取得作者同意后方可使用。详细了解请点击上方本文作者以取得邮箱联系。