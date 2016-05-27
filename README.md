# Additional scripts for l10n-drivers VM

These scripts are used inside a special VM used to maintain webdashboards and Bedrock.

## Bash Aliases
To load `.bashrc_aliases` in your profile, add the following lines to `~/.bashrc`
```bash
# include additional .bashrc if it exists
if [ -f $HOME/mozilla/git/scripts/.bashrc_aliases ]; then
    . $HOME/mozilla/git/scripts/.bashrc_aliases
fi
```

## Git
Make sure to add a section to `~/.gitconfig` to use meld as default diff tool.

```
[diff]
external = ~/mozilla/git/scripts/diff.py
```
