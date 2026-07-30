---
name: github-issue
description: Use when working on a task tied to a GitHub Issue. Enforce branch-per-issue workflow: create feature/#<n>-<desc> branch from main, commit with Conventional Commits, push and create PR (do not merge).
---

# GitHub Issue Workflow

When working on a task from a GitHub Issue, follow these rules:

## Before Starting

1. Create a new branch from `main` with the format:
   ```
   feature/#<issue-number>-<short-description>
   ```
   Example: `feature/#18-geographic-summary`, `feature/#17-cleaner-photo`

2. Checkout to that branch.

3. Start the dev server if needed (project-dependent, check CLAUDE.md).

## While Working

- Commit with [Conventional Commits](https://www.conventionalcommits.org/) format:
  ```
  <type>(<scope>): <description>
  ```
  - **type:** `feat`, `fix`, `refactor`, `style`, `chore`, `docs`, `perf`, `test`
  - **scope:** the view/store/component being changed
  - **description:** imperative mood, lowercase, no period at the end

## After Completing

1. Run the project's build/type-check command to verify no errors.
2. Push the branch.
3. Create a Pull Request to `main` (use `gh pr create`).
4. **Do NOT merge the PR** — wait for explicit instruction.

## Non-Issue Tasks

For small/urgent tasks not tied to a GitHub Issue:
1. Work directly on `main`.
2. Commit with conventional commit format.
3. Do NOT push — wait for explicit instruction.
