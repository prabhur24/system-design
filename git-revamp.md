1. version control
2. **git**
    - repository
    - sync code
    - local copy
3. github/bitbucket/gitlab
4. **stages/life cycle of file**
    - modified - manipulate files
    - staged - where our charges marked (git add)
    - committed - files recorded to .git folder
5. **git init** (history saved in another folder that git provides - .git)
    - initialize empty git repository (.git)
    - <i> .git that contains several folders like hooks,objects,refs,config,description & HEAD </i>
    - logs of our changes will be recorded there.

6. **git status** -print the current status on our works (any changes in files)
7. **git commit** - record the changes to .git folder
8. **git log** keep track commits
    - print Author/Date/Commit message and SHA
    - <i>git log --oneline</i> - print logs in one line
    - <i>git log --graph</i> - show logs in beautiful way with author line
    - <i> git log --author={username}</i> - show logs fpr specific user
    - <i> git log {{filename}} </i> - show logs for specific file

9. **git diff** - compare changes between branches/files/directory
    - git diff <<SHA before>> <<SHA AFTER>> - difference between commits

10. **Move Backward to the Previous States**
    - <i>git checkout</i> - not stored in db, time machine we can restore to designated time
    - <i>git reset </i> - unable to go back to future (loss our commits)
    - <i>git revert </i> - take existing file in past and merge with last commit

    i. **git reset**
    - git reset --soft : restore to staged state
    - git reset --mixed : restore to modified state
    - git reset --hard : restore to committed state

11. **git reflog** - to recover project history - show list of times when HEAD changed

12. **git checkout HEAD/HEAD~1** -
    - ~ previous nth-commit
    - ^ previous nth - parent commit

13. **git branching**
14. **git merge**
15. **git blame** - show what revision /author / last modified each line
16. **git remote** 
