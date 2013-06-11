# Config vars and files for adminvim.
#
# Usage:
# include adminvim::config
#
class adamvim::config {
  
  require boxen::config

  $bin          = "${boxen::config::home}/homebrew/bin/"
  $boxendatadir = "${boxen::config::datadir}"
  $uri          = 'https://github.com/raphael/adam-vim.git'
  # THIS RETURNS AN EMPTY STRING
  # $userdir      = "/Users/${boxen::config::user}"
  $userdir      = "/Users/ggoodyer"
  $vimdest      = "${userdir}/.vim"
  $vimsrc       = "${boxen::config::datadir}/adam-vim" 
  
}
