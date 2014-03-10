include_recipe 'leveldb::default'

case node['platform_family']
when 'rhel', 'fedora'
  package 'leveldb'  
when 'debian'
  package 'python-leveldb'
end
