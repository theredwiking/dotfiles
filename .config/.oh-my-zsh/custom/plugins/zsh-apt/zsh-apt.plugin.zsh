# Use aptitude or apt if installed, fallback is apt-get
# You can just set apt_pref='apt-get' to override it.

if [[ -e $commands[aptitude] ]]; then
    apt_pref='aptitude'
    apt_upgr='safe-upgrade'
elif [[ -e $commands[apt] ]]; then
    apt_pref='apt'
    apt_upgr='upgrade'
else
    apt_pref='apt-get'
    apt_upgr='upgrade'
fi

# Use sudo by default if it's installed
if [[ -e $commands[sudo] ]]; then
    use_sudo=1
fi

# Superuser 
if [[ $use_sudo -eq 1 ]]; then
    alias update="sudo $apt_pref update"
    alias upgrade="sudo $apt_pref $apt_upgr"
    alias install="sudo $apt_pref install"
    alias search="$apt_pref search"
    alias autoremove="sudo $apt_pref autoremove"
    alias remove="sudo $apt_pref remove --purge --auto-remove"
fi