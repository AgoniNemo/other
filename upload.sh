
count=1

if [[ -n $1 ]];
  then
    count=$1
fi

# echo "$count"

# 获取当前路径
path=$(dirname $0)
path=${path/\./$(pwd)}

#echo "$path"/qnConf.json

qshell qupload $count "$path"/qnConf.json
