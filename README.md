# The Open Science Grid Worker Node

The images in this repository contain the suggested base worker node environment for hosts on the Open Science Grid.

Available tags include:

* `latest`: The latest version of the OSG worker node environment on the most recent supported OS.  As of June 2017, this is OSG 3.4 and RHEL7.
* `3.4`: The OSG 3.4 release series on top of the most recent supported OS.  As of June 2017, this is RHEL7.
* `3.4-el7`: The OSG 3.4 release series on top of a RHEL7 environment.
* `3.4-el6`: The OSG 3.4 release series on top of a RHEL6 environment.
* `3.3`: The OSG 3.3 release series on top of the most recent supported OS.  As of June 2017, this is RHEL7.
* `3.3-el7`: The OSG 3.3 release series on top of a RHEL7 environment.
* `3.3-el6`: The OSG 3.3 release series on top of a RHEL6 environment.

As new release series (OSG 3.4, 3.5, ...) and base OS (RHEL8, RHEL9, ...) occur, the above tags will be updated appropriately.
Each release series gets updates from the OSG on the second Tuesday of each month; additional image updates will occur whenever
the underlying CentOS image is updated.

## Need help?

End-user support can be found here:

https://support.opensciencegrid.org

## Testing and Development images

In addition to the production-quality tags, we also publish tags corresponding to the testing and development environment.  These
are oriented toward developers trying to adjust their software to the updated environment.

Available tags include:
* `testing`: The testing repository on the most recent OS.
* `devel`: The development repository (least refined but most recent updates of software) on the most recent OS.
* `3.4-testing-el6`: The testing repository on top of a RHEL6 environment.

There are similar tags for `{3.3,3.4}-{testing,devel}-{el6,el7}`.
