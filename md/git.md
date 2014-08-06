

## Git
git commit -a -v

git throw 删除修改 类似git checkout  ./

git throwh 删除已经commit的修改

```
git commit --amend  #修改commit 内容

```

### 压缩合并

git rebase -i HEAD~3

git rebase -i HEAD~~~

压缩 后三个commit为一个commit

-i 交互式提交，打开交互式窗口

***

git cherry-pick commmit_id

Apply the changes introduced by some existing commits

就是对已经存在的commit 进行apply (可以理解为再次提交）

```
git checkout old_cc
git cherry-pick 38361a68
```

***

```git add . --all ```  add rm 文件

```git push origin develop:rtmp_streaming```  创建远程分支

```git push origin :rtmp_streaming```  删除远程分支

***

[git - pushing specific commit](http://stackoverflow.com/questions/3230074/git-pushing-specific-commit)

git push <remotename> <commit SHA>:<remotebranchname> should do the trick.

```g  push  origin  bb293368e6d:develop```

***

```
git reset --hard HEAD
git reset --hard HEAD^

暂存区域的内容回到初始状态
```

## 工具

tig

## vim

ZZ 保存并退出 同 wq


***

git 修改 已经提交了的注释

```
 git commit --amend
```

 git reset  --hard HEAD


***


[Git 推送和删除远程标签](http://ihacklog.com/post/how-to-push-and-delete-a-remote-git-tag.html)


```
#推送 
git push origin 标签名

# 删除 
git push origin :refs/tags/标签名

#打标签
git tag -a v1.1.4 -m "tagging version 1.1.4"

#删除本地仓库标签
git tag -d v1.1.4

#列出标签
git tag
```