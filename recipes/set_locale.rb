ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = 'en_GB.UTF-8'

template '/etc/profile.d/lang.sh' do
  source  'lang.sh.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

execute 'locale-gen' do
  command 'locale-gen en_GB.UTF-8'
end

execute 'dpkg-reconfigure-locales' do
  command 'dpkg-reconfigure locales'
end
