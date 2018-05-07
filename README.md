# richardlock does dotfiles
Based on:
https://github.com/jldeen/dotfiles/tree/wsl
https://github.com/anishathalye/dotfiles

### WSL Configuration / Install
Run the following to configure WSL...
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/richardlock/dotfiles/wsl/configure.sh)"
```

### Dotfiles Configuration / Install
Run the following to configure dotfiles only...
```
git clone -b wsl https://github.com/richardlock/dotfiles.git ~/.dotfiles
~/.dotfiles/install
