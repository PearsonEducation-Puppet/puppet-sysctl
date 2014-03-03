# Exec['/usr/bin/apt-get update || true'] -> Package <| |>
# Exec {
#   path => '/usr/bin:/usr/sbin:/bin'
# }

include sysctl::base

sysctl { 'net.ipv4.ip_forward': value => '1' }
sysctl { 'net.core.somaxconn': value => '65536' }
sysctl { 'vm.overcommit_memory': value => '1' }
