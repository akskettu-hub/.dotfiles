# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Installation notes

1. Download `nvim-linux-x86_64.appimage` from [releases](https://github.com/neovim/neovim/releases)
2. Run `chmod u+x nvim-linux-x86_64.appimage`

3. Put AppImage somewhere permanent:

```
  mkdir -p ~/.local/bin
  mv ~/Downloads/nvim-linux-x86_64.appimage ~/.local/bin/nvim
  chmod u+x ~/.local/bin/nvim
```

4. Make sure `~/.local/bin` is in your `$PATH`:
  export PATH="$HOME/.local/bin:$PATH"
