# Use aptitude or apt if installed, fallback is apt-get
# You can just set apt_pref='apt-get' to override it.

alias upgrade="sudo dnf upgrade"
alias install="sudo dnf install"
alias search="dnf search"
alias autoremove="sudo dnf autoremove"
alias remove="sudo dnf remove"
