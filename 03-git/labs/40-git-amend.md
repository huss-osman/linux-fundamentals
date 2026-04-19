# Git Amend

## Overview

**Git amend** allows developers to modify the most recent commit. This can include updating the commit message or adding missed changes to the last commit without creating a new one.

This is useful in real-world development when a commit was made too early, contains a mistake, or is missing files. Instead of creating multiple small commits, `git commit --amend` helps keep history clean and meaningful.

---

## Key Concepts

- **Amend** – Modifies the most recent commit.
- **Commit Message** – Description of the changes made.
- **Staging Area** – Files prepared to be committed.
- **HEAD** – Points to the latest commit.
- **Rewrite History** – Changing an existing commit.
- **Force Push** – Required if the commit was already pushed.

---

## Commands

### Create Initial Commit

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_amend_pt1.png">

```bash
echo "line 1" > notes.txt
git add notes.txt
git commit -m "feat: add note file"
```

This creates the initial **commit** with a file tracked by Git.

---

### Add Another File (Missed Change)

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_amend_pt3.png">

```bash
echo "metadata" > meta.txt
git add meta.txt
```

This demonstrates a scenario where a file was not included in the previous commit.

---

### Amend the Commit

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_amend_pt3.png">

```bash
git commit --amend
```

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_amend_pt4.png">

This reopens the last commit, allowing you to **add staged changes and edit the message**.

---

### Update Commit Message

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_amend_pt5.png">

Change:

```bash
feat: add note file
```

To:

```bash
feat: add note file and meta
```

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_amend_pt6.png">

This updates the **commit message** to reflect the new changes.

> [!NOTE]
> - When using `vi`, type `:wq!` to save and exit the editor.

---

### Verify Commit History

<img width="400" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_log_oneline.png">

```bash
git log --oneline
```

<img width="400" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_amend_pt7.png">

> [!IMPORTANT]
> As you can see, both changes are now combined into **one commit** instead of two separate commits.  
> The commit message was also updated to reflect the full change.
>
> This is useful when:
>
> - You made a commit too early  
> - You forgot to include files  
> - You want to clean up your commit message  
>
> `git commit --amend` essentially **rewrites the last commit**, allowing you to fix or improve it.
>
> ⚠️ If the commit has already been pushed, you must use:
>
> ```bash
> git push --force
> ```
>
> This rewrites history on the remote, so use it carefully in team environments.

---

## Key Takeaways

- `git commit --amend` modifies the latest commit.  
- It can update both **files and commit message**.  
- Helps maintain a **clean and meaningful commit history**.  
- Avoid using it on shared commits unless you understand **force push**.  
- Useful for fixing small mistakes quickly.

---

## Reflection

Using `git commit --amend` helped me understand how important it is to manage commits properly. It’s not just about fixing mistakes, but also about keeping commit history clean and meaningful.

I also learned that small improvements, like updating a commit message or adding missed changes, can make a big difference in how readable and professional a repository looks. This reinforces the importance of **attention to detail and good commit practices** when working with Git in real-world projects.
