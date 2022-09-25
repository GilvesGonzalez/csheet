# cheatsheets-personal

This repository contains personal cheatsheets to be used with
[cheat][] and similar applications.

## Installation and Usage

### Install cheat

```sh
brew install cheat
```

or check the [cheat installation] page.

### Install cheatsheets-personal

> First verify cheat's conf.yml file, generally at `~/.config/cheat/conf.yml`

```sh
git clone https://github.com/sauljabin/cheatsheets-personal.git ~/.config/cheat/cheatsheets/personal
```

## Format

Cheatsheets are plain-text files that begin with an optional "front matter"
header in YAML format. The header may be used to assign "tags" to a sheet, and
to specify the sheet's syntax (`bash`, `python`, `go`, etc).

When possible, cheatsheets should conform to this format:

```sh
---
syntax: bash
tags: [ vcs, development ]
---
# To stage all changes in the current directory:
git add --all

# To commit staged changes:
git commit -m <message>
```

As a guideline, it is preferred to use [docopt][] syntax when specifying
parameter placeholders. In edge-cases where that syntax may cause confusion, it
is permissible to use placeholder values (`foo.txt`, `example.com`, etc.) as
necessary.

## License

Cheatsheets are licensed under [Creative Commons CC0 1.0][cc0]. See
[LICENSE][] for the full license text.

## Other links

- [cheat][]
- [cheatsheets][]
- [cheatsheets-personal][]

[LICENSE]: https://github.com/sauljabin/cheatsheets-personal/blob/main/LICENSE
[cc0]: https://creativecommons.org/publicdomain/zero/1.0/legalcode
[cheat]:  https://github.com/cheat/cheat
[docopt]: http://docopt.org
[cheatsheets]: https://github.com/cheat/cheatsheets
[cheatsheets-personal]: https://github.com/sauljabin/cheatsheets-personal
[cheat installation]: https://github.com/cheat/cheat/blob/master/INSTALLING.md