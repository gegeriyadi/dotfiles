# Git commit conventions

- Write commit messages following Conventional Commits (`type(scope): summary`, e.g. `fix(auth): handle expired token`, `feat: add dark mode toggle`). Common types: feat, fix, chore, refactor, docs, test, style, perf.
- Do NOT add a `Co-Authored-By: Claude` (or similar AI attribution) trailer to commit messages.
- Commit as soon as a task (or a clearly separable chunk of one) is finished and verified working — don't wait to be asked each time. This overrides the general default of only committing when explicitly requested. Still don't push without explicit confirmation, and still stop to ask if something about the change (scope, risk, what's staged) is unclear.
