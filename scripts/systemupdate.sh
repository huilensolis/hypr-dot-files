#!/usr/bin/env bash
check_packages() {
	outdate_pkgs = $(pacman -Qu)
	outdate_pkgs_len = ${outdate_pkgs}

	if [outdate_pkgs_len -gt 0]; then
		dunstify ${outdate_pkgs_len} pkgs outdated
	else
		dunstify "pkgs are up to date"
	fi
}
check_packages
