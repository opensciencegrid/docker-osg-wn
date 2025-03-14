# The Open Science Grid Worker Node

The images in this repository contain the suggested base worker node environment for hosts on the Open Science Grid.

Available tags include:


* `latest`: (Deprecated) The latest version of the OSG worker node environment on the most recent supported OS.  At the time of deprecation, this was OSG 23 and EL9.
* `24`: The OSG 24 release series on top of the most recent supported OS.  As of March 2025, this is EL9.
* `24-el8`: The OSG 24 release series on top of an EL8 environment.
* `23`: The OSG 23 release series on top of the most recent supported OS.  As of March 2025, this is EL9.
* `23-el8`: The OSG 23 release series on top of an EL8 environment.

## Need help?

End-user support can be found here:

https://support.opensciencegrid.org

## Testing and Development images

In addition to the production-quality tags, we also publish tags corresponding to the testing and development environment.  These
are oriented toward developers trying to adjust their software to the updated environment.

Available tags include:
* `testing`: (Deprecated) The testing repository on the most recent OS. At the time of deprecation, this was OSG 23 and EL9.
* `devel`: (Deprecated) The development repository (least refined but most recent updates of software) on the most recent OS. At the time of deprecation, this was OSG 23 and EL9
* `24-testing-el9`: The testing repository for OSG 24 on top of an EL9 environment.

There are similar tags for `{23,24}-{testing,devel}-{el8,el9}`.
