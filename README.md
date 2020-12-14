# DevOps_online_Dnipro_2020Q42021Q1
# Task 1.1 Git

1. Since I am using Ubuntu (Debian family), I am using sudo apt-get in order to insall Git;
2. Configuring Global settings:  
`git config --global user.name "Vladyslav Diachenko"
git config --global user.email "kry1one11@gmail.com"
git config --global core.editor "vim"`


3. Created account on GitHub with the required name. Created initial catalog structure.
4. Cloning a repo:  
 `git clone https://github.com/CryOneButWhy/DevOps_online_Dnipro_2020Q42021Q1.git`  
It asks to enter credentials.
We can use SSH keys in order to avoid it.
It is also possible to set those credentials via git config.

5. Created file *readme.txt*
6. initial commit
 Before the commit, I have used - `git status` to check what changes will be commited.    
 `git status`  
*On branch main  
Your branch is up to date with 'origin/main'.  
Untracked files:*  
  *(use "git add <file>..." to include in what will be committed)*  
*readme.txt*  
*nothing added to commit but untracked files present (use "git add" to track)*

So we adding changed to be tracked
`git commit -m="Created readme.txt file" `
*[main a7acf32] =Created readme.txt file
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 m1/task1/readme.txt*

Creating **develop** branch, **images branch**, and uploading images.

Changed **inxed.html** to display images

Since I have made changed in index.html file when I was on **images** branch, those changes were not present on **other** branches.
