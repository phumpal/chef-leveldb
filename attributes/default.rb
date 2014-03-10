default[:leveldb][:src]         = 'repo' # Can be src, repo, pkg

default[:leveldb][:version]     = '1.15.0'
default[:leveldb][:url]         = 'https://leveldb.googlecode.com/files/leveldb-#{node[:leveldb][:version]}.tar.gz'

default[:leveldb][:user]        = 'root'
default[:leveldb][:group]       = 'root'

default[:leveldb][:destination] = '/opt/leveldb' 
default[:leveldb][:repo]        = 'https://code.google.com/p/leveldb'
