dotfiles
========

It's so nice to have your .files accessible from all around the world, isn't it?

Bash profile
============

To load these setting in the current session without overwritting .bash_profile

```bash
ALBOB_FILE=/tmp/albob.bash_profile
wget -O ${ALBOB_FILE} https://raw.githubusercontent.com/Albob/dotfiles/master/mac/albob.bash_profile
source ${ALBOB_FILE}
rm -f ${ALBOB_FILE}
```