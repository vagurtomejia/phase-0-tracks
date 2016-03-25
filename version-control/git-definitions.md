# Git Definitions

**Instructions:** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a repository of files with monitored access. It allows us to view the entire history of revisions to one or more files, and merge revisions made by different people.

It is useful for distributed collaborative development because it is easy to work in a same project at the same time, keep track of changes,reverse-change if needed, etc.

* What is a branch and why would you use one?

A branch is the duplication of an object under version control.
In git, a branch is a movable pointer to a given commit in the project.
It is used to allow modifications to happen in parallel without destabilizing the code in the master branch. 

* What is a commit? What makes a good commit message?

A commit is a "save point" of my code. It tells the revision control system to write the changes made in my working copy back to the repository. This will make my changes final and available to all users in the given branch.
A good commit message would be in imperative, and will clearly describe the purpose of the change.

* What is a merge conflict?

A merge conflict happens when two changes are so similar that the revision control system can not determine which is the correct change to keep.
