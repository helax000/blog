#!/usr/bin/env bash
# 自动完成 githubPage 仓库代码提交
main(){
    cd ../../
    hexo clean
    hexo generate
    cp -rf public/ ../githubPage/public/
    cd ../githubPage/public || exit
    git status
    git add .
    git commit -m "commit"
    git push origin master
}
main
