#!/usr/bin/env bash
# 自动完成代码提交
main(){
    cd ../../
    hexo generate
    cp -rf public/ ../githubPage/public/
    cd ../githubPage/public || exit
    git status
    git add .
    git commit -m "commit"
    git push origin master
}
main