# == Class: pciutils::params
#
# This class should be considered private
#
class pciutils::params {

  case $::osfamily {
    'redhat', 'debian': {
      $package_name = 'pciutils'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }

}
