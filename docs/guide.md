# Guide
This documents acts as the guide to describe some of the more complex concepts of [Git](https://git-scm.com/).

## What are branches? 🌲
A git version-controlled project typically consists of a `master` **branch** and several other **branches**.

Think of it like a tree where the `master` is the trunk and other **branches** are ermm... branches of that tree - they come off the trunk.

Idea is that `master`, the trunk, is where all the work in the **branches** feed into.

![](image/branch_create.jpeg)

In this regard, `master`, should contain **all** finished code that is *perfect*. *Perfect* in the sense that the code existing in `master` works for anybody else who clones the repository. It should not contain experimental work.

Hence, when writing some new code, you should:
1. Create a branch
1. Write the code and version-control via:
    - [] `git add <file_name>`
    - [] `git commit -m <commit_message>`
    - [] Rinse and repeat
1. Once the code has been written, you'll want the code to be reviewed by a collaborator.
1. Pending collaborator's satisfaction, merge this branch into the `master` branch so the code is transplanted inside.

![](image/branch_merge.jpeg)

***

## Git, GitHub, GitLab, Azure DevOps: Dafuq?
There are plenty of version-control types of things out there and it can be confusing to distinguish between them.

The difference is that Git is the underlying **version-control system** that these *services* depend on to work effectively.

The following below (some of the most popular but are plenty more out there) are *services* on top of Git that add more functionality to Git, primarily in the form of making it easier to collaborate with others and to host your code online:
- [GitHub](https://github.com/)
- [GitLab](https://about.gitlab.com/)
- [AzureDevOps](https://azure.microsoft.com/en-gb/services/devops/)

Put another way, Git is local to your computer set-up whereas these *services* are hosted online and allow easy collaboration.

### How does it piece together?
Extending to previous section, when writing some new code, you should:
1. Create a branch
1. Write the code and version-control via:
    - [] `git add <file_name>`
    - [] `git commit -m <commit_message>`
    - [] Rinse and repeat
1. Once the code has been written, you'll want to `git push` the branch to the *remote* (which is the repository hosted on GitHub/GitLab/Azure DevOps etc.)
1. Set-up a **Pull Request** which is a request for a formal code-review for a collaborator to look at.
1. Pending collaborator's approval, close this **Pull Request** and it should (no fast-forward) merge this branch into the `master` branch.
    + This means you do not have to manually no fast-forward merge the branch yourself.

***

## I've heard horror stories of merge conflicts...
Yes, you've heard right.

*Merge conflicts* happen when Git cannot transplant the changes made from one branch to another. This can happen in a variety of scenarios such as when you update some code chunk, `x`, on your branch but then the `master` branch's equivalent code chunk. `x`, also gets updated without you noticing nor bring these changes into your branch. When you try to merge your branch into the `master`, you will be warned that you must resolve these *merge conflicts*.

Thus, you will have to edit the file which has these conflicts then `git add ...` and `git commit ...` the edited file before you can continue with the merge.

Issue is that if you were to do this via Git, then you will have to manually step through the file and resolve the conflicts line-by-line.

However, it need not be so difficult! If you use a service like GitHub or Azure DevOps or even SourceTree, you can have the changes visualised for you so it is easier to identify and resolve these conflicts.

***

## What's the craic with rebase?
As Git combined with a service such as GitHub massively upscales the collaborative potential of a team working on the same project, there's the risk that people working with their own local copies of the code stored on the remote repository (the code that is hosted and lives on GitHub) will, as they develop their code on their own branch, quickly have their branch becoming out-of-date with respect to what the code is on the `master` branch.

For example:

1. Suppose Bilal creates branch `feature/app-password` off of `master`.
1. Around the same time, Kiki creates branch `data/import-customer-sales` off of `master`.
1. Kiki completes her work on her branch before Bilal does, so has her code reviewed and merged into `master`.
    + Therefore, the `master` branch now has new code in it.
1. Bilal's branch, `feature/app-password` now no longer has the same code base as what is on `master` because `master` has been updated in that time.
1. To update his code branch with the latest changes on `master` so that he avoids merge conflicts, Bilal must now enter `git rebase master` into the terminal, which will bring the latest changes in `master` into his branch.

> **Note:** `git rebase <other_branch_name>` also works when trying to incorporate changes from other people's branches.

***

## Can I use my IDE to version-control?
Short answer, yes.

To the author's knowledge, there is Git functionality built into the following IDEs:

- RStudio
- PyCharm
- Visual Studio

That said, the RStudio and Visual Studio git version-control functionality is nowhere near comprehensive enough.

Nevertheless there are pieces of software which can act as an interface on top of your local instance of Git. Some of them are:

- [SourceTree](https://www.sourcetreeapp.com/)
- [GitHub desktop](https://desktop.github.com/)

SourceTree is especially useful as it visualises the tree-branch structure of Git and allows easy spotting of differences between files. Areas that Git isn't as good at.

> Now Git outta here and start version-controlling!
