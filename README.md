dotfiles
========

It's so nice to have your .files accessible from all around the world, isn't it?

Bash profile
============

To make this run, you'll need to have a proper bash completion installed and the `wget` tool. On the Mac, I recommend to install the `bash_completion` package which contains `__git_ps1`:

```bash
brew install bash_completion wget
```

To load these setting in the current session without overwritting `.bash_profile`, copy the following line and paste it in a terminal:

```bash
ALBOB_FILE=/tmp/albob.bash_profile; wget -O ${ALBOB_FILE} https://raw.githubusercontent.com/Albob/dotfiles/master/mac/albob.bash_profile; source ${ALBOB_FILE}; rm -f ${ALBOB_FILE};
```