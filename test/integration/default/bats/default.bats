#!/usr/bin/env bats

export DEFAULT_INTERFACE=eth0

@test "should have ipv6 fowarding on venet0" {
  [ "$(cat /proc/sys/net/ipv6/conf/venet0/forwarding)" = 1 ]
}

@test "should have ipv6 fowarding on the default interface" {
  [ "$(cat /proc/sys/net/ipv6/conf/$DEFAULT_INTERFACE/forwarding)" = 1 ]
}

@test "should have ipv4 forwarding on venet0" {
  [ "$(cat /proc/sys/net/ipv4/conf/venet0/forwarding)" = 1 ]
}

@test "should have ipv4 forwarding on the default interface" {
  [ "$(cat /proc/sys/net/ipv4/conf/$DEFAULT_INTERFACE/forwarding)" = 1 ]
}

@test "vzctl should be executable" {
  [ -x /usr/sbin/vzctl ]
}

@test "veinfo should be present" {
  [ -f /proc/vz/veinfo ]
}

@test "vz/private should be a directory" {
  [ -d /vz/private ]
}

@test "/vz/template/cache should be a directory" {
  [ -d /vz/template/cache ]
}

@test "/etc/vz/vz.conf should be a file" {
  [ -f /etc/vz/vz.conf ]
}

@test "/etc/vz/conf should be a directory" {
  [ -d /etc/vz/conf ]
}

