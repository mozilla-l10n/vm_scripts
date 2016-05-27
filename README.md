# Additional scripts for l10n-drivers VM

These scripts are used inside a special VM used to maintain webdashboards and Bedrock.

To load `.bashrc_aliases` in your profile, add the following lines to `~/.bashrc`
```bash
# include additional .bashrc if it exists
if [ -f $HOME/mozilla/git/scripts/.bashrc_aliases ]; then
    . $HOME/mozilla/git/scripts/.bashrc_aliases
fi
```
