# Nymea package for the synology NAS

This is a work in progress nymea package for synology DSM.

## How to build


Set up the DSM toolchain as per https://help.synology.com/developer-guide/create_package/install_toolkit.html

Then, inside the "source" directory clone this repository including submodules:

    git clone https://github.com/mzanetti/nymea-sonology-package nymea
    cd nymea
    git submodule update --init


IMPORTANT: The synology toolchain has a bug that it scans the build output for
the word "error" and fails the build. This will make the build fail as we're
compiling classes that contain the word "error" (e.g. QtXmlError). Because of this we need to patch the build scripts to remove this.
See: https://github.com/SynologyOpenSource/pkgscripts-ng/issues/33
!Apply the changes in the comment to your packagescipts-ng folder!


After this, build with synology's PkgCreate:

    ./pkgscripts-ng/PkgCreate.py -v 6.0 -p x64 nymea
