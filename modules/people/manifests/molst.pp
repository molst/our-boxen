class people::molst {
  # the following require the corresponding emacs modules in Puppetfile
  # include googledrive
  # include dropbox
  # include iterm2
  # include fish
  # include gimp
  include emacs  $home     = "/Users/${::boxen_user}"  $my       = "${home}/my”}