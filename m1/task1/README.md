# Task 1.1 Git

1. Since I am using Ubuntu (Debian family), I am using sudo apt-get in order to insall Git.
2. Configuring Global settings.  
`git config --global user.name "Vladyslav Diachenko"
git config --global user.email "kry1one11@gmail.com"
git config --global core.editor "vim"`


3. Created account on GitHub with the required name. Created initial catalog structure.
4. Cloning a repo:  
 `git clone https://github.com/CryOneButWhy/DevOps_online_Dnipro_2020Q42021Q1.git`  
It asks to enter credentials.
We can use SSH keys in order to avoid it.
It is also possible to set those credentials via git config.

5. Created file *readme.txt*.
6. initial commit.
 Before the commit, I have used - `git status` to check what changes will be commited.    
 `git status`  
*On branch main  
Your branch is up to date with 'origin/main'.  
Untracked files:*  
  *(use "git add <file>..." to include in what will be committed)*  
*readme.txt*  
*nothing added to commit but untracked files present (use "git add" to track)*

So, we adding files to be tracked.  
Commit:  
`git commit -m="Created readme.txt file" `  
*[main a7acf32] =Created readme.txt file
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 m1/task1/readme.txt*

7. Creating **develop** branch, **images** branch, and uploading images.

8. Changed **inxed.html** to display images.  
Screenshot:  
![No image](./screenshots/Images.png)

Since I have made changed in **index.html** file when I was on **images** branch, those changes are not present in other branches.  
9. Creating **styles** branch and moving to it. After that, I added **styles** folder and **style.css** file in that branch.  
Screenshot of the website with a connected **style.css** file:  
![No image](./screenshots/Syles.png)
10. Merging **styles** branch to  **develop** branch.  
Seems like there should be merging conflict.  
However, there were no conflicts during merge as I had an empty **index.html** file on **develop** branch. This file was changed on **images** branch.  
`git merge styles`  
*Updating 0c2c12e..6dc6fa1
Fast-forward  
 m1/task1/index.html      | 7 +++++++  
 m1/task1/style/style.css | 3 +++  
 2 files changed, 10 insertions(+)  
 create mode 100644 m1/task1/style/style.css*  
11. I have read the task inattentively and merging **develop** branch into **main** branch:  
`git merge develop`  
*Updating a7acf32..6dc6fa1
Fast-forward
 m1/task1/index.html      | 7 +++++++
 m1/task1/style/style.css | 3 +++
 2 files changed, 10 insertions(+)
 create mode 100644 m1/task1/index.html
 create mode 100644 m1/task1/style/style.css*  
12. After that, I have merged **images** into **main** branch and got conflict:  
`git merge images`  
*Auto-merging m1/task1/index.html
CONFLICT (content): Merge conflict in m1/task1/index.html
Automatic merge failed; fix conflicts and then commit the result.*  
13. Resolving the conflict by changing content of **index.html** file. The reason for the conflict is different content in **index.html** file from **images** branch and **main** branch. Git is checking if the same code is located on the same lines in file. In case there is different code on the same line, Git considers it as a conflict.
Screenshot of working website:  
![No image](./screenshots/index.png)
14. `git log` showed history of my commits    
These logs are located in [history.txt](./history.txt) file  
From the logs we see that first commits were done on GitHub, other commits were made in my local repo where I have set different username.  
I have used the following command to check commits which were done in my local repo (Using "Vladyslav Diachenko" username)  
`git log --author "Vladyslav Diachenko"`  
[history.txt](./history.txt)  
15. [task1.1_GIT.txt](./task1.1_GIT.txt)  
16. What is DevOps:  
DevOps is a role in software development which connects work of developers and IT operations. Basically, it speeds up the process of implementing software code and delivering it to main application. It is done via automation. DevOps also uses CI/CD processes in order to deliver code and implement it into an application. DevOps should also be capable of creating and managing infrastructure, usually it is done using Cloud services. Combination of those aspects increases overall speed and reliability of development, testing, and implementation of a software product.
