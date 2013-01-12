set[:authorization][:sudo][:users] = ['vagrant','ubuntu']
set[:authorization][:sudo][:passwordless] = true

set[:ubuntu][:archive_url] = 'http://gb.archive.ubuntu.com/ubuntu/'
set[:ubuntu][:security_url] = 'http://security.ubuntu.com/ubuntu/'
set[:ubuntu][:include_source_packages] = true

# set[:ruby_build][:default_ruby_base_path] = '/usr/local/stow'
# set[:ruby_build][:upgrade] = 'none'

set[:build_essential][:compiletime] = true

set[:postgresql][:version] = '9.1'
set[:postgresql][:password][:postgres] = 'password'

# do this if the version is not the default (9.2)
set['postgresql']['data_directory']    = "/var/lib/postgresql/#{node["postgresql"]["version"]}/main"
set['postgresql']['hba_file']          = "/etc/postgresql/#{node["postgresql"]["version"]}/main/pg_hba.conf"
set['postgresql']['ident_file']        = "/etc/postgresql/#{node["postgresql"]["version"]}/main/pg_ident.conf"
set['postgresql']['external_pid_file'] = "/var/run/postgresql/#{node["postgresql"]["version"]}-main.pid"

