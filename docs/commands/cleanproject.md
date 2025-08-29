# /cleanproject

Remove debug artifacts and temporary files using git-safe methods.

**Usage**:
```
/cleanproject
```

**Instructions:**
- Scan the repository for build outputs, logs, and other non-source files.
- Use git-aware commands such as `git clean` to delete only untracked artifacts.
- Avoid removing tracked files or configuration that may be required.
- Summarize what was removed and confirm the working tree is clean.
