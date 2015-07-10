#
# Regular cron jobs for the ltsp-pnp package
#
0 4	* * *	root	[ -x /usr/bin/ltsp-pnp_maintenance ] && /usr/bin/ltsp-pnp_maintenance
