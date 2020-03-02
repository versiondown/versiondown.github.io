---
layout: post

title: Git 常用操作
keywords: Git
description: Description
date: 2019-10-22 12:00:00
update: 2020-03-02 12:00:00
author: 
    name: ezhq
    avatar: https://res.cloudinary.com/imgcave/image/upload/v1582464863/Img/Logo/ezhq_light_ej1jag.png
    url: https://ezhq.xyz
categories: 
    - [Dev]
    - [Git]
tags: 
    - Dev
    - Git
cover: true
top: false
thumbnail: true
icons: [fas fa-star yellow, fas fa-fire accent]

toc: true
mathjax: false
meta: 
    header: [title, author, date, top]
    footer: [share]
body: [article, related_posts, comments]
sidebar: [plain, grid, toc, tags]
# permalink: https://xaoxuu.com/blog/2017-07-05-hexo-blog/
popular_posts: true

---

<!-- {% asset_img FERoadmap_Cover.JPG %}  -->

<fancybox>

![Img](https://res.cloudinary.com/imgcave/image/upload/v1583129302/Img/BlogCover/Git_Cover_upc2jz.png)

</fancybox>

> 常用 Git 操作及工作流。

<!--more-->

---


# 基础命令
## 克隆
### 克隆项目
* `git clone [LINK]`

## 分支
### 列出所有本地分支
* `git branch`

### 列出所有远程分支
* `git branch -r`

### 列出所有分支(本地与远程)
* `git branch -a`

### 切换到指定分支并更新工作区
* `git checkout [branch-name]`

# 真实操作流程演示
## 非必要步骤: 账户检查
### 查看当前用户名和邮箱
* `git config user.name`
* `git config user.email`

### 修改项目用户名和邮箱
* `git config user.name [NEW USER NAME]`
* `git config user.email [NEW EMAIL]`

* 备注: 不推荐操作: 修改全局用户名和邮箱
  * `git config --global user.name [NEW USER NAME]`
  * `git config --global user.email [NEW EMAIL]`

## 下载进入工作环境
### 下载 master 分支
* `git clone [LINK]`

### 切换到刚刚克隆的项目根目录
* `cd [FOLDER NAME]`

### 列出所有分支
* `git branch -a`

### 切换到 develop 分支
* `git checkout [DEVELOP BRANCH NAME]`

### 在 develop 分支上新建自己的 feature 分支(并进入该新建分支)
* `git checkout -b [FEATURE NAME]`

### 在远程建立一个和本地一样的分支
* `git push origin [LOCAL FEATURE NAME]`

### 本地分支和远程分支建立跟踪关系
* `git branch --set-upstream-to=origin/[REMOTE BRANCH NAME] [LOCAL BRANCH NAME]`

### 查看所有本地和远程分支, 并检查本地分支与远程分支对应关系是否正确
* `git branch -a -vv`

## 开始进行具体工作内容
* `Coding...`

## 工作中小功能完成提交
* 提交到仓库区: `git commit -am [MESSAGE]`
* 上传本地当前分支到远程对应仓库: `git push`

## 合并分支
  * 前提
    * 所有工作分支已经 commit 并 push 到远程仓库
  * 合并
    * 直接网页上就可以进行操作

## 非必要操作: 清理分支
### 分支清理
* 直接网页上就可以进行操作

## 更新本地项目环境, 准备下一轮功能开发

> 更多参考资料
> [常用Git命令清单_阮一峰](http://www.ruanyifeng.com/blog/2015/12/git-cheat-sheet.html)