#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 获取当前分支命令

Get_Branch_Command=`git branch | grep "*"`

# 获取当前分支名称
Current_Branch=${Get_Branch_Command:2} 

if [ $Current_Branch=="main" ]
then  npm run test
      touch test/index.js
      git add .
      git commit -m 'build dist'
      git push
fi



