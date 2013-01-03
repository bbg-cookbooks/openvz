Description
===========
Installs Openvz (http://wiki.openvz.org/Main_Page) container based virtualization for linux

Requirements
============

Attributes
==========
```
default.openvz.yum.packages = ['vzkernel','vzctl','vzquota']
default.openvz.yum.repo_url = 'http://download.openvz.org/openvz.repo'
default.openvz.yum.gpg_key = 'http://download.openvz.org/RPM-GPG-Key-OpenVZ'



default.openvz.sysctl = {
    "net.ipv4.ip_forward" => 1,
    "net.ipv6.conf.default.forwarding" => 1,
    "net.ipv6.conf.all.forwarding" => 1,
    "net.ipv4.conf.default.proxy_arp" => 0,

    # Enables source route verification
    "net.ipv4.conf.all.rp_filter" => 1,

    # Enables the magic-sysrq key
    "kernel.sysrq" => 1,

    # We do not want all our interfaces to send redirects
    "net.ipv4.conf.default.send_redirects" => 1,
    "net.ipv4.conf.all.send_redirects" => 0,
}
```

Usage
=====

Include the recipe "openvz::default" to install the repo, packages, services, and sysctl settings

