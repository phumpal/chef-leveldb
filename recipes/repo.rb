include_recipe 'leveldb::default'

git 'leveldb' do
  destination  '/var/tmp/leveldb'
  repository   node[:leveldb][:repo]
  action       :checkout
  user         node[:leveldb][:user]
  group        node[:leveldb][:group]
end

directory node[:leveldb][:destination] do
  action :create
end

bash 'compile_leveldb' do
  cwd '/var/tmp/leveldb'
  code <<-EOH
    make INSTALL_PATH=#{node[:leveldb][:destination]}
    cp --preserve=links libleveldb.* /usr/local/lib
    cp -r include/leveldb /usr/local/include/
    ldconfig
  EOH
end
