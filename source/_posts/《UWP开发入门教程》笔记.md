---
layout: post
title: 《UWP开发入门教程》笔记
date: 2017-08-27 15:00:00
updated: 2019-03-27
# comments: true
# permalink: 
# music: 
# keywords: 
# description: 

categories: [Dev, UWP]
tag: [Dev, UWP]
toc: true
excerpt: 'UWP入门教程学习笔记。'
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

UWP入门教程学习笔记。  

<!--more-->

{% asset_img blogTopImage.png %}


> 状态: 进行中  
> 最新更新: 20170827  

---
# 【30：总结】  
## UWP-25：Common XAML Controls Part 2
* TimePicker 时间选择器  
	``` cs
	<TimePicker ClockIdentifier="12HourClock" />
	```

* CalendarPicker 日历选择器  
	``` cs
	<CalendarDatePicker PlaceholderText="choose a date" />
	```

* CalendarView 日期查看  
	```cs
	<CalendarView SelectionMode="Multiple"
		SelectedDatesChanged="MyCalendarView_SelectedDatesChanged" />

	private void MyCalendarVie_SelectedDatesChanged(CalendarView sender, CalendarViewSelectedDatesChangedEventArgs args)
	{
		var selectedDates = sender.SelectedDates.Select(p => p.Date.Month.ToString() + )
	}
	```


---
**版权声明**  
创作站点：[ezhq.xyz](https://ezhq.xyz/)  
本文作者：[ezhq](mailto:ezhq@outlook.com)  
本文链接：[https://ezhq.xyz/2017/08/27/《UWP开发入门教程》笔记/](http://ezhq.xyz/2017/08/27/《UWP开发入门教程》笔记/)  
版权备注：任何形式使用本作品需保留本完整版权声明，使用本作品前应先和作者取得联系并说明用途，取得作者同意后方可使用。详细了解请点击上方本文作者以取得邮箱联系。
