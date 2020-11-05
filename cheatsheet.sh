# command line

## list files in current directory/folder
ls

## change directory to a subfolder
cd <folder_name>

## change directory to the higher-level folder
cd ../


# git
## initialise git
git init <repository_name>

## configure user name
git config --global user.name "<your_name>"
git config --global user.email "<your_email_address>"

## copy/clone contents of another repository
git clone <link_to_remote_repository>

## main commands - used 80% of time

### check files added/staged
git status

### check log of all previous commit messages
git log

### check log of past n commit messages
git log -n

### add/stage a file
git add <file_name>

### add/stage all files in a folder
git add <folder_name>/*

### add/stage all files changed since last commit
git add .

### commit the change made to file (can only be done after adding/staging file)
git commit -m "<commit_message>"

### amend last commit message
git commit --amend -m "<commit_message>"


## working with branches

## check local branches
git branch

### create branch
git branch <branch_name>

### switch branch
git checkout <branch_name>

### (shortcut) create branch and switch to it
git checkout -b <branch_name>

### delete branch
git branch -d <branch_name>

### merge branch to master branch
git merge --no-ff <branch_name>

### incorporate changes from another branch into current one
git rebase <other_branch_name>


# git x Github
## add remote to repo
git remote add <remote_name> <link_to_remote>

## verify new remote
git remote -v

## check remote branches
git remote -a

## pull branch from remote
git pull <remote_name>/<remote_branch_name> <local_branch_name>

# push branch to remote
git push -u <remote_name> <local_branch_name>


# dangerous commands
## remove all trace of a folder or file from Git history
git filter-branch -f --index-filter 'git rm -r --cached --ignore-unmatch <path_to_file_or_folder' HEAD

## if your changes already on remote
### then need to force push to remote
### as remote will have historical folder or file
### --force-with-lease allows force push to fail
### if there are new commits on remote that you didn't expect
### such as one by a fellow collaborator
### people who have already cloned your repo
### will face issues so recommend they re-clone your repo
### and work off of that
git push -f <remote_name> <branch_name> --force-with-lease

# miscellaneous commands
## un-stage staged files
git restore <file_name>

## remove unstaged files (includes deleting them)
git rm <file_name>
