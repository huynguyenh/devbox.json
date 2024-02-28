# devbox.json

This repo contains my [devbox](https://devbox.sh) config for local development, along with some other config files.

## Stack

- devbox to isolated dev environment and package manager (no homebrew)
- brew cask to automatically install some applications

## How to use

1. install devbox.sh

```js
curl -fsSL https://get.jetpack.io/devbox | bash
```

2. pull devbox global via github, or clone the devbox.json file into your global path

```
devbox global pull git@github.com:huynguyenh/devbox.json.git
```

3. put this line into your .zshrc or any other shell profile file

```
eval "$(devbox global shellenv --init-hook)"
```

4. reload terminal
