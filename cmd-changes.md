# Command line configurations
### Change displaying `user@groupname`  
- Open directory `~`
- Create backup of configs for bash `cp .bashrc bashrc.bak`
- Open  `.bashrc` file `nano .bashrc`
- Find row with `PS1=` and replace by this 
`PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@voblaco-group\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '`
- Wel done, you have changed group to `voblaco-group`

[Good article about this](https://www.ostechnix.com/hide-modify-usernamelocalhost-part-terminal/)
