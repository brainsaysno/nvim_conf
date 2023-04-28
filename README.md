# Instalar configuración remota

1. Wget a algun shortlink "bit.ly/nrusso" que me descargue un script .py
2. El script tiene dentro las instrucciones para instalar el editor
  a. Clonar Astronvim a `~/.config/nvim` o dónde sea necesario para el sistema
  b. Clonar [repo propio](www.github.com/brainsaysno/) a `~/.config/nvim/lua/user`
  c. (Opcional) Correr Lazy Install
  d. (Opcional) Descargar LSPs
3. (TODO) Mover LSPs a mason-lspconfig.nvim `ensure_installed`
4. (TODO) Descargar zsh
5. (TODO) Append a .zshrc mis alias

[Normal link](https://www.dropbox.com/s/4f5ohe10s4zdhj8/main.py?dl=0)
[Shortened link](https://shorturl.at/tBHOT)

```bash
wget --max-redirect=10 https://shorturl.at/tBHOT
```

