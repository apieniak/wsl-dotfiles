# wsl-dotfiles

Personal dotfiles to setup a WSL instance for development.
It contains:

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/)
- [zsh autsuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [antigen, zsh plugin manager](https://github.com/zsh-users/antigen)
- [keychain, for managing SSH Keys](https://linux.die.net/man/1/keychain)
- [bat, a cat clone with wings](https://github.com/sharkdp/bat)
- [fzf, a command-line fuzzy finder](https://github.com/junegunn/fzf)
- [docker zsh completion](https://github.com/greymd/docker-zsh-completion)
- [kubectl zsh completion](https://kubernetes.io/docs/tasks/tools/included/optional-kubectl-configs-zsh/)

## Requirements

- [WSL2 with Ubuntu](https://docs.microsoft.com/en-us/windows/wsl/install)

## Usage

Install all tools and config files on a fresh wsl instance

```
make build
```

Update the config files

```
make update
```

## Commands

Delete all local git branches of current repository

```
gdb
```

Enter FZF preview mode with bat

```
fzfp
```
