# AGENTS.md — Rules for AI agents working in this repo

This repo holds the user's **shell/vim/tmux/git/claude/opencode** dotfiles.
It is **PUBLIC** — treat every byte as visible to the world.

## Repo layout

- `install.sh` — setup: apt deps, oh-my-zsh, powerlevel10k, nvm, symlinks `$HOME` files → repo files, clones nvim config
- `bashrc`, `zshrc`, `profile` — **copied** from the active machine (source of truth = `~/.bashrc` etc.)
- `gitconfig`, `gitignore`, `tmux.conf` — applied via symlink by `install.sh`
- `vimrc`, `init.vim`, `vim/`, `coc-settings.json` — Vim config (vim-plug), installed via symlink
- `claude/settings.json` — Claude Code global settings (copied from `~/.claude/settings.json`)
- `opencode/` — OpenCode config + skills
- `README.md` — overview, install, update prompt

## Sync rules

1. **Direction**: active machine → repo. When the user edits `~/.zshrc`, `~/.bashrc`, `~/.profile`, `~/.gitconfig`, `~/.claude/settings.json`, or `~/.config/opencode/opencode.jsonc`, copy those into the repo.
2. **Never commit secrets** (repo is public):
   - No API keys, tokens, passwords — replace with env var references (`{env:VAR}` for opencode, `$VAR` for pi)
   - Real keys live only in `~/.env.local` (chmod 600)
   - No private paths, email addresses, or project-specific data
3. **`install.sh` files are applied by symlink** — they are NOT synced from active files. Only update them deliberately (e.g., adding a new symlink).
4. **nvim config is NOT here** — it lives in `gegeriyadi/init.lua`. Don't copy `~/.config/nvim` into this repo; if asked, point to the init.lua repo.
5. **Keep README accurate** — update the layout table when files change.
6. **Commit hygiene**: clear message, push to `origin/master`.

## Safety checklist before commit

- [ ] `grep -rInE 'sk-[A-Za-z0-9]{10,}|api[_-]?key|token|password' .` returns nothing
- [ ] No `~` absolute paths to private locations
- [ ] README reflects current layout

## Never do

- ❌ Commit `~/.env.local`, `auth.json`, sessions, or any credential
- ❌ Add the nvim config here (it has its own repo)
- ❌ Sync files that are meant to be symlinked (vimrc, tmux.conf, gitignore) from live machine state
