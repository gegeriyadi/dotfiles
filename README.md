# dotfiles

Personal dotfiles — shell, vim/nvim, tmux, git, claude, opencode.

Install with this command:

```bash
curl https://raw.githubusercontent.com/gegeriyadi/dotfiles/master/install.sh | bash
```

## What's inside

| File / Dir | Config |
|---|---|
| `bashrc`, `zshrc`, `profile` | Shell configs (synced with active machine) |
| `gitconfig`, `gitignore` | Git config |
| `tmux.conf` | tmux |
| `vimrc`, `init.vim`, `vim/`, `coc-settings.json` | Vim config (vim-plug) |
| `claude/settings.json` | Claude Code global settings |
| `opencode/` | OpenCode config (jsonc, package.json, skills) |

## Notes

- **nvim** lives in a separate repo: [`gegeriyadi/init.lua`](https://github.com/gegeriyadi/init.lua) (lua + lazy.nvim). `install.sh` clones it to `~/.config/nvim`.
- **Secrets** (`~/.env.local`, e.g. `DEEPSEEK_API_KEY`) are **never** committed — OpenCode config references them via `{env:DEEPSEEK_API_KEY}`.
