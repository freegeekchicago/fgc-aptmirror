# README.MD:

# 10/27/19:

* I've installed [Netdata](https://www.netdata.cloud/) on this system so that we can monitor hardware activity, especially when the apt-mirror scripts are running.
* I've mirrored Ubuntu 16.04 through 18.04. I removed 12.04 and 14.04.
* I've mirrored Linux Mint 18.3 through Linux Mint 19.2. The source repos for Mint are small, so I mirrored them too.
* This host uses mirrors.kernel.org in /etc/apt/sources.list so that it doesn't update from itself.
* I edited /etc/hosts so that all the external IPs for the mirrors are hardcoded. That way, I can set DNS forwarding for the whole local network, and the mirror doesn't loop back on itself.
	* us.archive.ubuntu.com
	* archive.ubuntu.com
	* packages.linuxmint.com
* I had to change the symlinks so that we could mirror both Ubuntu and Linux Mint.
	* /var/www/html -> /var/spool/apt-mirror/mirror/packages.linuxmint.com/
	* /var/www/html/ubuntu -> /var/spool/apt-mirror/mirror/us.archive.ubuntu.com/ubuntu/

## 07/13/17:

The mirror was completely busted last week.

* Changed mirror source from us.kernel.org to us.archive.ubuntu.com. 
* kernel.org only let us download for about 90 min before dropping our connections. ubuntu.com was solid for days.
* Everything for 14.04 is mirrored, and I changed the symlink to the correct directory.
* 16.04 isn't mirrored yet. At 1.5mb/s it would take about 26 hours. I need to take the mirror home again for the weekend.

