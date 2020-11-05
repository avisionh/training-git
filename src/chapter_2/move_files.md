# Moving Folders across Repos
Consider the following use-case scenario:

> You add a folder, `folder_x`, to a repo, `repo_a`, and do a bunch of work on it, so subsequently have 15 commits associated to this folder.
>
> Perhaps you want to split the massive repo, `repo_a`, into smaller repos, `repo_b`, `repo_c`, ..., so that it is clearer what each repo is doing and managing the dependencies better. You thus want `folder_x` in repo `repo_b`. 
>
> You want to move `folder_x` and its git commit history into `repo_b` with minimal of effort. 

Phrased in this way, the problem statement is thus:
- **Goal:** 
    + Move `folder x` from `repo_a` to `repo_b`.
- **Constraints:**
    + `repo_a` contains other files and folders that you don't want moved.
    + You want to preserve the git commit history for the file you are moving.

Note, the instructions below also work with a file you want to move to a new repo.

The high-level steps to follow are:
1. Get folder ready for the move
1. Merge folder into new repository

## Get folder ready for the move
Copy from GitHub the URL of the repository that you want to take `folder_x` away from, `repo_a`. We label this as `<repo_a url>`. 

Then enter the following in your terminal/shell.

```shell
# take copy of repo_a onto your local file system
git clone <repo_a url>
# move into `repo_a`
cd <repo_a>
# remove link to the repo on GitHub so you avoid doing anything stupid
git remote rm origin
# remove anything not related to `folder_x`
git filter-branch --subdirectory-filter <folder_x path> -- --all
# create folder to store `folder_x` in
mkdir <folder_x>
# move `folder_x` into newly-created folder
mv * <folder_x>
# get git to recognise and then record the change
git add .
git commit -m "<commit_message>"
```

## Merge folder into new repo
Copy from GitHub the URL of the repository that you want to move `folder_x` to, `repo_b`. We label this as `<repo_b url>`. 

Then enter the following in your terminal/shell:

```shell
# take copy of repo_b onto your local file system
git clone <repo_b url>
# move into `repo_b`
cd <repo_b>
# link to `repo_a` directory path which now only has `folder_x`' commit history
git remote add branch-repo-a <repo_a directory>
# bring `repo_a` commit history to `repo_b`
git pull branch-repo-a master --allow-unrelated-histories
# remove link to repo_a directory as no longer needed
git remote rm branch-repo-a
```

***
### References
This section was inspired by the following:
- [Greg Bayer, 2011](https://gbayer.com/development/moving-files-from-one-git-repository-to-another-preserving-history/)
- [Arnau Siches, 2020](https://www.seachess.net/notes/git-grafting)
