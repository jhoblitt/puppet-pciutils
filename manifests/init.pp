# == Class: pciutils
#
# simple template
#
# === Examples
#
# include pciutils
#
class pciutils (
  $ensure = 'present',
) {
  validate_re($ensure, '^present$|^absent|latest$')

  include ::pciutils::params

  package { $::pciutils::params::package_name:
    ensure => $ensure,
  }
}
