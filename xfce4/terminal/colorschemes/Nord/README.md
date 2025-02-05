<p align="center">An arctic, north-bluish clean and elegant <a href="https://docs.xfce.org/apps/terminal/start" target="_blank">XFCE Terminal</a> color theme.</p>

<p align="center">Designed for a fluent and clear workflow based on the <a href="https://www.nordtheme.com" target="_blank">Nord</a> color palette.</p>

## Getting started

### Installation

#### Manual

Copy the [`nord.theme`](https://github.com/nordtheme/xfce-terminal/blob/develop/src/nord.theme) file to the local configuration directory `~/.local/share/xfce4/terminal/colorschemes`.

#### Install Script

The included `install.sh` shell script can be used for an automated installation.
If no option is specified, the default theme file is `src/nord.theme`.

A list of available options can be shown with the `--help` option.

```shell
./install.sh --help
```

Syntax: `install.sh [OPTIONS]`

<!--lint ignore table-cell-padding-->

| Option                                          | Description                  |
| ----------------------------------------------- | ---------------------------- |
| `-h`, `--help`                                  | Shows the help               |
| `-v`, `--verbose`                               | Verbose output               |
| `-t  <SCHEME_FILE>`, `--themefile <THEME_FILE>` | Use the specified theme file |

### Activation

1. Open the _Edit_ menu and select _Preferences_
2. Switch to the _Colors_ tab
3. Select `Nord` from the _Presets_ drop-down menu
4. Done! :)
