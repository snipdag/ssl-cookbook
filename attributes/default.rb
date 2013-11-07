debian_root  = "/etc/ssl"
debian_certs = "#{debian_root}/certs"
debian_keys  = "#{debian_root}/private"

case node['platform_family']
when 'debian', 'ubuntu'
  debian_group = "ssl-cert"
when 'rhel'
  debian_group = "root"
end

default['ssl']['certs_dir'] = debian_certs
default['ssl']['keys_dir']  = debian_keys
default['ssl']['group']     = debian_group
