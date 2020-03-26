# Style Guide: Git

**Purpose**: This page sets out guidelines to follow when using git with projects in R and RStudio.

**Adhering to these guidelines will make life easier for yourself, the team, and any future contributors to the project.**

Git should be employed whenever work that is being done is going to be shared, either immediately or in the future. Ideally, projects should be begun with git, so there is a complete history of the project. Where this isn't possible, an initial commit message should set out the state of the project when the 'git history' begins.

***
## Repositories
+ **Principle:** Each repository/repo should cover an entire project, and the name should be descriptive.
> *e.g. training-git*

***
## Branches
+ **Principle**: Each branch should have a single purpose.
+ **Frequency:** Every time you want to work on part of a project, create a branch for it.
+ **Naming Convention**:
  - `type/name` - this lets branches of the same type be grouped together in GitHub
  - Choose short and descriptive names
`feature/b1` is not descriptive
`feature/branch-to-implement-the-functionality-discussed-on-tuesday` is not short
`feature/dynamic-filter` is short and descriptive
  - Use hyphens to denote spaces in your branch name
  - Don't include your name on the branch. This is recorded elsewhere by git.

**Note, this is for branches that you are sharing with others. If you are just experimenting on your local machine then feel free to use whatever convention you like. Anything pushed to GitHub must follow these conventions.**

**Branch Types**
```
Note this is not an exhaustive list:

feature   Additional functionality or features
bugfix    Fixing an error
data      Updating data or data connections
format    Changing the format/layout

Any suggestions, let us know!
```
E.g. `feature/drill-down`

***
## Commit
+ **Principle**: Include "what the commit does" as well as "why it does it" if the "what the commit does" message is not sufficient. Like Twitter, any commit message cannot be longer than 80 characters.
+ **Frequency:**  Commit often and early, to ensure you don't lose any work. Don't worry about your `git log` or `git nl` looking ugly. You can clean this up afterwards.
+ **Naming Convention**: Should follow the below form, where *<type*> and *<subject>* are mandatory, whilst *<body*> and *<footer*> are optional.  
    - If *<body>* and *<footer>* are present, *<BLANK LINE>* is mandatory.
```
<type>: <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```
Most commits will be of the form `<type>: <subject>`. For example:

`feat: add option to filter on Local Authority`
`fix: convert grades to factor for correct ordering`
`perf: remove all for-loops and replace with vectorised functions`

### <type> (Mandatory)
+ Must take one of the following:
```
feat      A new feature
fix       A bug
docs      Documentation only changes
style     Changes that do not affect the meaning of the code *e.g. white-space, formatting*
refactor  A code change that neither fixes a bug or adds a feature
perf      A code change that improves performance
test      Add missing tests
chore     Changes to build process or auxiliary tools and libraries such as documentation generator
```

### <subject> (Mandatory)
+ Should be a succinct description of the change, and follow the conventions below:
    - Use the imperative, present tense. *e.g. 'change', not 'changed' or 'changes'
    - Don't capitalise the first letter
    - Don't use full stops

### <body> (Optional)
+ Should include motivation for commit and contrast this with previous behaviour
     - Use the imperative, present tense

### <footer> (Optional)
+ References any GitHub work items that this commit addresses

Example
```
feat: include observe and handler expressions

key requirement of RAT Transformation project to get drill-down functionality

closes #1234
```
***

## Pull Requests

A 'Pull Request' is a request by a developer to have their work (in a branch) **merged** into another branch, usually `master`. For example, when a particular `feature/branch` is complete, it needs to be merged with `master` to allow the other developers to use it.

**Note that a pull request is a GitHub artefact, not a git one!**

When you update your branch (by `push`ing your changes to the remote branch on GitHub), you will see you have the option to open a new pull request; this is on the right hand side of the 'Branches' tab, under Code, in GitHub.

This brings up a form, asking you for a title, a description, reviewers and linked work items.

### Title
The title should generally be left as it is by default - it is descriptive of the branches involved in the merge.

### Description
Use this box to describe:
+ What the overall purpose of the branch being merged is (**Summary**)
+ The details of what has changed, as a bullet list (**Details**)
+ What you would like the reviewers to check (**To Check**)
+ How they should go about doing so (**How to Run**)

The *Description* box supports markdown, so use **, # and other markdown tags to format your pull request nicely. It doesn't take long, and it makes it much much easier to read!

### Reviewers
Here you should add the AD profiles of any colleagues you want to review your changes. By default it will have the entire team group selected. Going forward, this could include the whole of the Analysis and Modelling area, so it is better to get only those people who are involved with your project/repo to review the code. They will be sent an email to tell them that they have been asked to review a pull request, with a link to the PR in GitHub.

### Linked Work Items
Use this field to link any work items from GitHub (e.g. User Stories, Tasks, Features, Epics). These will be visible to any reviewers, so they can see the wider context of what you're trying to do. If and when the PR is approved and completed, you will then have the option to automatically close these linked work items, saving time on project management.

## If you are asked to review a Pull Request

You can look at the `diff` of the code in GitHub (this is where new code appears in green, old deleted code in red) and you can add comments to the `diff` here. You can also (and you should) `clone` the repo (using `git clone '<url>'`) and test it out locally. This also means any further pull requests you are asked to review can simply be pulled from the remote.

You have the option to 'Approve', 'Approve with Suggestions', 'Wait for Author' or 'Reject' a Pull Request.
Comments and Suggestions form a thread at the bottom of the Pull Request page.

## To complete a pull request

To complete a pull request once it has been approved, click the blue 'Complete' button in the top right hand side. This will perform the merge and generate a merge commit, with a link to the PR on the right hand side.

**It is not best practice to perform the merge manually from the command line, as this doesn't create the integrated links within GitHub.**

***

### References
These guidelines have been influenced by the following sources:
+ [GitHub Git Style Guide](https://github.com/agis/git-style-guide)
+ [iwisich Git Style Guide](https://gitlab.com/iwisich/git_workflow_example/blob/master/git_style_guide.md)
+ [Gravity Department Blog](http://gravitydept.com/blog/devising-a-git-repository-naming-convention)
+ DfE Git Guidelines

***

### Additional Readings
High-level Git tutorials:
+ [Roger Dudler GitHub](http://rogerdudler.github.io/git-guide/)
+ [Git for beginners](https://www.sitepoint.com/git-for-beginners/)
+ [Basic Git commands with examples](https://rubygarage.org/blog/most-basic-git-commands-with-examples)

Git cheatsheets:
+ [Roger Dudler guide](http://rogerdudler.github.io/git-guide/files/git_cheat_sheet.pdf)
+ [Github Git guide](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)
+ [Atlassian guide](https://www.atlassian.com/dam/jcr:8132028b-024f-4b6b-953e-e68fcce0c5fa/atlassian-git-cheatsheet.pdf)
