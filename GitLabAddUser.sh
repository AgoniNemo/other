
#!/bin/bash
#批量创建gitlab用户

url_path="http://<地址>/api/v4/users"
private_token="private_token"

userinfo=''
if [[ $# > 0 ]]
  then
  echo "路径:$1"
  userinfo=$1
else
  echo "~~~~~~~~~~~~请输入添加用户文件的地址~~~~~~~~~~~~~~~"
  read path
  userinfo=$path
fi

while read line
do
    password=`echo $line | awk '{print $1}'`
    mail=`echo $line | awk '{print $2}'`
    username=`echo $line | awk '{print $3}'`
    name=`echo $line | awk '{print $4}'`
    curl -d "password=$password&email=$mail&username=$username&name=$name&private_token=$private_token" "$url_path"

done <$userinfo
