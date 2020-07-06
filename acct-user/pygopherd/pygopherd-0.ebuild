# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="A user for pygopherd"
ACCT_USER_ID=-1
ACCT_USER_HOME=/var/gopher
ACCT_USER_GROUPS=( pygopherd )

acct-user_add_deps
