Puppet pciutils Module
======================

[![Build Status](https://travis-ci.org/jhoblitt/puppet-pciutils.png)](https://travis-ci.org/jhoblitt/puppet-pciutils)

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Limitations](#limitations)
    * [Tested Platforms](#tested-platforms)
5. [Versioning](#versioning)
6. [Support](#support)
7. [See Also](#see-also)


Overview
--------

Manages the pciutils package


Description
-----------

Manages the installation state of the
[`pciutils`](http://mj.ucw.cz/sw/pciutils/) package and (*eventually*) facts
about the PCI devices present in the system.

Usage
-----

```puppet
include ::pciutils
```

```puppet
class { '::pciutils':
  ensure => 'present', # present, absent, or latest
}
```


Limitations
-----------

### Tested Platforms

* el6.x


Versioning
----------

This module is versioned according to the [Semantic Versioning
2.0.0](http://semver.org/spec/v2.0.0.html) specification.


Support
-------

Please log tickets and issues at
[github](https://github.com/jhoblitt/puppet-pciutils/issues)


See Also
--------
* [`pciutils` homepage](http://mj.ucw.cz/sw/pciutils/)
