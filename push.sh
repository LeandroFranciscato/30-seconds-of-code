#!/bin/sh

setup_git() { 
  git config --global user.email "leandro_franciscato@hotmail.com"
  git config --global user.name "LeandroFranciscato"
}

commit_website_files() {  
  git checkout setup-ci 
  git add .
  git commit --message "Travis build"
}

upload_files() {
  git remote add setup-ci https://${SOMEVAR}@github.com/LeandroFranciscato/30-seconds-of-code.git > /dev/null 2>&1
  git push --quiet
}

setup_git
commit_website_files
upload_files

