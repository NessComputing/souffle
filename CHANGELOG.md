# Changelog


###  v0.0.1

* Application framework laid out
* Initial node state machine
* Initial system state machine
* Added AWS provider
* Initial command line interface
* Added daemonization
* Added singleton configuration
* Initial runlist parser
* Initial dependency traversal
* System rebalancing (pre-provisioning)
* Added REST API

### v0.0.2

* AWS provider
  * Added EBS support
  * Added RAID support
  * Added LVM Support
* Added support for chef-solo provisioning
* Switched from `Puma` to `Thin`
* Updated REST API
* Updated command line interface
* Initial Documentation
* Optimized AWS polling mechanism
* Optimized AWS creation ordering

### v0.0.3

* Multiple documentation updates
* AWS provider
  * Tags now use `sys` prefix
  * Tags now use `hex(4)` instead of `hex(6)`
* Added chef roles support to providers