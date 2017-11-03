# 用法

打开终端,输入命令

```
mv qshell的绝对路径 /usr/local/bin/（比如：mv /Users/xxxx/Downloads/qsshell /usr/local/bin/）
```
再输入命令
```
chmod u+x /usr/local/bin/qshell 
```

这个命令就是给qshell这个文件执行权限，完成后再输入下面的命令

```
qshell account AK SK
```

```
sh upload.sh的绝对路径
```

#### GitLabAddUser.sh使用

修改文件内容，private_token可以从root用户Settings-->Account查到

```
url_path="http://<地址>/api/v4/users"
private_token="private_token"
```

使用时，需要一个添加用户的text文件，格式如下：

```
12345678 test123@qq.com testname1 测试1
12345678 528634141@qq.com testname2 测试2
```

脚本使用，如下
```
sh /Users/xxx/Desktop/GitLabAddUser.sh

```
