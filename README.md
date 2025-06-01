# ErCollao traveling config

This repository holds the configuration curated by ErCollao for
different tools of his operative system. It is meant to be for
individual use, and other users may well need to adjust the
different configurations. Use at your own risk.

Most CLI tools tend to read configuration directly from the
`~/.config` folder, so this repository is meant to be cloned
just there. Some tools may require some additional tweaking for
them to read the configuration.

## Tools assumed to be installed

This respository assumes you have installed:
 - Ghostty terminal emulator
 - Zsh terminal
 - Oh-my-zsh terminal configuration
 - Tmux terminal multiplexer
 - Nvim text editor

## Setting up `zsh`

The easiest way to set it up is to just set the `ZDOTDIR`
environment variable to point to `.config/zsh`, and that will
take care of the rest. If not possible, [see section below](#Partial configurations).

To read the zsh configuration from the repository's files,
you need to create the file `.zprofile` with the following
contents:

```bash
export ZDOTDIR="$HOME/.config/zsh"
```

## Partial configuration of `zsh`

This section is meant to allow you to keep your own `.zshrc`
whilst including the settings from this repository.

There are some additional files that are meant to be run in
initialization. The bash/zsh initialization file is expected
to have lines like:

```bash
source ~/.config/env

```

This will set some basic environment variables that support the use
of this file (ensure that the system looks in the `.config` folder
even when it's not the default, configure the system to expect the
right tools, etc). Other environment variables that may be sensitive
are not included (e.g. keys to services), and need to be copied
separately (we wouldn't want that in a git repository).
