```
lsof -i :3000
lsof -i @127.0.0.1
netstat -nap|grep port
```

[SSH SERVER 公钥改变后客户端无法登录的解决办法](http://www.linuxbyte.org/ssh-server-gong-yue-gai-bian-hou-ke-hu-duan-wu-fa-deng-lu-de-jie-jue-ban-fa.html)

ssh会你每个你访问过的计算机的公钥(public key)都记录在~/.ssh/known_hosts。
当下次访问相同计算机时，OpenSSH会核对公钥。
如果公钥不同，OpenSSH会发出警告， 避免你受到DNS Hijack之类的攻击。所以当服务器公钥改变而我还在用老的公钥时系统就给了你如上的提示。
解决办法：
实用ssh-keygen -R 释放

```ssh-keygen -R knewcoin.com```

***

[技巧: 使用truss、strace或ltrace诊断软件的"疑难杂症"](http://www.ibm.com/developerworks/cn/linux/l-tsl/)

strace在linux下用来跟踪某个进程的系统调用
在solaris下，对应的是dtrace
在mac下，对应的命令是：dtruss

***

`sudo adduser <username>` 交互命令

使用adduser时，创建用户的过程更像是一种人机对话，系统会提示你输入各种信息，然后会根据这些信息帮你创建新用户

`useradd <username>` 三无

如果后面不添加任何参数选项 一无Home Directory，二无密码，三无系统Shell

`sudo usermod -a -G sudo <username>`

`tar -xzvf file.tar.gz //解压tar.gz`

`lsb_release -a` 查看Linux系统版本信息的命令

`sudo passwd deploy`

***

永久性删除用户账号

userdel peter

groupdel peter

usermod –G peter peter （强制删除该用户的主目录和主目录下的所有文件和子目录

***

[http://askubuntu.com/questions/7477/how-can-i-add-a-new-user-as-sudoer-using-the-command-line](http://askubuntu.com/questions/7477/how-can-i-add-a-new-user-as-sudoer-using-the-command-line)

sudo adduser <username> sudo

***

`curl -L https://get.rvm.io | bash -s stable`

`source ~/.rvm/scripts/rvm`

`rvm list known`

`rvm install 2.1.0`

`rvm 2.1.0 --default`

***

`sudo apt-get install git`

`sudo apt-get install nginx`

`sudo apt-get install mongodb`

`sudo apt-get update`

`sudo apt-get dist-upgrade`

`sudo  apt-get install libssl-dev`
***


[Using ssh agent forwarding](https://help.github.com/articles/using-ssh-agent-forwarding)

***

[ssh ForwardAgent](https://help.github.com/articles/using-ssh-agent-forwarding)

```
Host knewcoin.com
  Hostname knewcoin.com
  User deploy
  IdentityFile ~/.ssh/id_rsa
  TCPKeepAlive yes
  ForwardAgent yes

```

 ssh-add
