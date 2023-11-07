#!/bin/bash
repo_directory="/f/MyHexo"  # 指定仓库的本地目录路径
remote_branch="main"	#所要提交的分支
current_time=$(date +"%Y-%m-%d %H:%M:%S")

echo "Updating and pushing changes in MyHexo"
cd "$repo_directory"
git pull origin "$remote_branch"
git add .
git commit -m "初始化仓库 $current_time"
git push origin "$remote_branch"
