path to dir:
```
cd "OneDrive - M365 Universität Hamburg/Semester 4/Environmental Economics/envecon"
```

1. To get status
```
git status
```

2. To add changes before commit
```
git add .
```

3. To commit changes
```
git commit -m "commit message"
```
4. To push changes
```
git push origin main
```

5. To pull the new things from the original repo\
    a. check if you have a remote:
    ```
    git remote -v
    ```
    b. if you don't have a remote, setup a remote:
    ```
    git remote add upstream https://github.com/original_author/original_repository.git
    ```
    c. Fetch the latest changes from the original repository:
    ```
    git fetch upstream
    ```
    d. Merge the changes into your current branch:
    ```
    git switch main
    git merge upstream/main
    ```

6. Resolve any conflicts (if necessary):
If there are any conflicts between your changes and the changes from the original repository, you'll need to resolve these conflicts manually. The terminal will guide you on files that need attention.

7. Push the merged changes to your repository (after updating the repository you have to update your own private repository)\

```
git push -u origin main
```

