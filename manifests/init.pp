# == Class: subversion
#
# This class installs and configures subversion.
#
# This works on Debian like systems.
# Puppet Version >= 3.4.0
#
# === Parameters
#
# none
#
# === Examples
#
# include subversion
#
# === Authors
#
# Frederik Wagner <wagner@wagit.de>
#
# === Copyright
#
# Copyright 2014 Frederik Wagner
#
class subversion {

  contain subversion::install

}
