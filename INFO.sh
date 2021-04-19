#!/bin/bash
# Copyright (c) 2000-2016 Synology Inc. All rights reserved.

source /pkgscripts-ng/include/pkg_util.sh

package="nymea"
version="0.26.0"
displayname="nymea"
maintainer="nymea GmbH"
arch="$(pkg_get_unified_platform)"
description="nymea core package"
[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
