# == Class: subversion::websvn
#
# This class installs and configures subversion::websvn.
# Does _not_ install/configure a webserver.
#
# This works on Debian like systems.
# Puppet Version >= 3.4.0
#
# === Parameters
#
# [*urlalias*]
#   URL under which the websvn is reached.
#   *Optional* (defaults to _/websvn_)
#
# [*parentpath*]
#   Directory under wich the SVN repositories reside.
#   *Optional* (defaults to _/srv/svn_)
#
# === Examples
#
# include subversion::websvn
#
# === Authors
#
# Frederik Wagner <wagner@wagit.de>
#
# === Copyright
#
# Copyright 2014 Frederik Wagner
#
class subversion::websvn (
  $urlalias   = $subversion::websvn::params::urlalias,
  $parentpath = $subversion::websvn::params::parentpath,
) inherits subversion::websvn::params {

  include subversion

  contain subversion::websvn::install
  contain subversion::websvn::config

  Class['subversion::websvn::install'] ->
  Class['subversion::websvn::config']
}
