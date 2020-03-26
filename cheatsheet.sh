# command line

## list files in current directory/folder
ls

## change directory to a subfolder
cd <folder_name>

## change directory to the higher-level folder
cd ../


# git
## initialise git
git init

## main commands - used 80% of time

## check local branches
git branch

### create branch
git branch <branch_name>

## switch branch
git checkout <branch_name>

### (shortcut) create branch and switch to it
git checkout -b <branch_name>

### add/stage a file
git add <file_name>

### add/stage all files changed since last commit
git add .

### commit the change made to file (can only be done after adding/staging file)
git commit -m "<commit_message>"


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
git push <remote_name> <local_branch_name>
