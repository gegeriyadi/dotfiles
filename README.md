# dotfiles

Personal dotfiles — shell, vim/nvim, tmux, git, claude, opencode.

> ⚠️ **Public repo** — never commit secrets, personal data, or private project details.

## Install (new machine)

```bash
curl https://raw.githubusercontent.com/gegeriyadi/dotfiles/master/install.sh | bash
```

`install.sh` symlinks the config files into `$HOME` and clones the nvim config (`init.lua`).

## What's inside

| File / Dir | Config |
|---|---|
| `bashrc`, `zshrc`, `profile` | Shell configs (synced with active machine) |
| `gitconfig`, `gitignore` | Git config |
| `tmux.conf` | tmux |
| `vimrc`, `init.vim`, `vim/`, `coc-settings.json` | Vim config (vim-plug) |
| `claude/settings.json` | Claude Code global settings |
| `opencode/` | OpenCode config (`opencode.jsonc`, `package.json`, `skills/`) |
| `install.sh` | Setup script (symlinks + deps) |

## Related repos

- **nvim** → [`gegeriyadi/init.lua`](https://github.com/gegeriyadi/init.lua) (lua + lazy.nvim), cloned to `~/.config/nvim`
- **pi** → [`gegeriyadi/dot-pi`](https://github.com/gegeriyadi/dot-pi) (`~/.pi`)
- **Claude Code full config** → [`gegeriyadi/ge-claude-settings`](https://github.com/gegeriyadi/ge-claude-settings) (`~/.claude`)

## Secrets

All API keys live in `~/.env.local` (chmod 600, never committed):

```bash
export DEEPSEEK_API_KEY="sk-..."
export PI_9ROUTER_API_KEY="sk-..."
```

- `opencode/opencode.jsonc` references keys via `{env:DEEPSEEK_API_KEY}`
- `zshrc` / `bashrc` source `~/.env.local` if present
- The public repo must contain **zero** secrets

## Update via AI

Paste this prompt into your AI agent to sync this repo with the active machine:

```text
Update the dotfiles repo (~/dotfiles) from my active machine config:

1. Copy the active files into the repo:
   ~/.zshrc → zshrc, ~/.bashrc → bashrc, ~/.profile → profile,
   ~/.gitconfig → gitconfig, ~/.claude/settings.json → claude/settings.json,
   ~/.config/opencode/opencode.jsonc → opencode/opencode.jsonc
2. This repo is PUBLIC — never commit secrets, paths, or personal data.
   Replace any API key with an env var reference ({env:...} for opencode).
   Keys live in ~/.env.local, never in this repo.
3. Do NOT touch: install.sh, vim/, init.vim, vimrc, tmux.conf, gitignore
   (those are applied via symlinks, not copied from active files).
4. If the file layout changed, update the README table.
5. Commit with a clear message and push to origin/master.
```

See [AGENTS.md](AGENTS.md) for detailed agent rules.
