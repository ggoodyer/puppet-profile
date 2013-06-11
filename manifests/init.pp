# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adamvim

class adamvim {

  include adamvim::config

  file { [
    $adamvim::config::userdir
  ]:
    ensure => directory
  }

  notify{"The bin value is: ${adamvim::config::bin}": }
  notify{"The vimdest value is: ${adamvim::config::vimdest}": }
  notify{"The data value is: ${adamvim::config::boxendatadir}": }
  notify{"The uri value is: ${adamvim::config::uri}": }

  # clone the git repo to tmp
  exec { 'clone adam-vim.git':
    command   => "git clone ${adamvim::config::uri}",
    path      => "${adamvim::config::bin}",
    creates   => "${adamvim::config::vimdest}",
    cwd       => "${adamvim::config::boxendatadir}",
    tries     => "3",
    timeout   => "15",
    logoutput => "true",
  }
 
  # More maintainable:
  file { "${adamvim::config::vimdest}":
    ensure    => link,
    target    => "${adamvim::config::vimsrc}",
  }  

}
