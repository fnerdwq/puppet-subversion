# (private)
class subversion::websvn::config {

  $parentpath = $subversion::websvn::params::parentpath
  file { '/etc/websvn/config.php':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('subversion/websvn_config.php.erb')
  }

  $alias = $subversion::websvn::params::alias
  file { '/etc/websvn/apache.conf':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('subversion/websvn_apache.conf.erb')
  }

  # set readable for webserver
  file { $parentpath:
    ensure  => directory,
    recurse => true,
    owner   => $subversion::websvn::params::www_owner,
    group   => $subversion::websvn::params::www_group,
    mode    => '0640',
  }

}
