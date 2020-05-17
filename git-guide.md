## Git Quick Reference Guide

>:bulb: To clone you may need to [set up SSH keys](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) in [your account](https://github.com/settings/keys).

```
ssh-keygen -t ed25519 -C "email@example.com"
```

### :large_blue_diamond: First time cloning and new branch:

1. Git workflow:
    ```bash
    git clone PROJECT.git
    git checkout -b NEWBRANCH

    # make changes

    git status
    git add -A
    git commit -m "commit message"
    git push -u origin NEWBRANCH
    ```
    >:warning: Never use the --force flag!
  
2. Create Merge Request

---

### :large_blue_diamond: If you already have the repo cloned, and branch already exists:
1. Git workflow:
    ```bash
    git checkout master
    git pull
    git checkout BRANCHNAME
    git merge master

    # make changes

    git status
    git add -A
    git commit -m "commit message"
    git push
    ```
    >:warning: Never use the --force flag!

2. Create Merge Request