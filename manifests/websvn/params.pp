# default parameters vor websvn (private)
class subversion::websvn::params {

  $urlalias   = '/websvn'
  $parentpath = '/srv/svn'

  case $::osfamily {
    'Debian': {
      $www_owner = 'www-data'
      $www_group = 'www-data'
    }
    'RedHat': {
      $www_owner = 'apache'
      $www_group = 'apache'
    }
    default:  {
      fail("Module ${module_name} is not supported on ${::operatingsystem}/${::osfamily}")
    }
  }

}

