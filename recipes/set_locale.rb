ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = 'en_GB.UTF-8'

package 'locales'

template '/etc/profile.d/lang.sh' do
  source  'lang.sh.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

execute 'locale-gen' do
  command 'locale-gen en_GB.UTF-8'
end

case node['platform']
when 'ubuntu'
  execute 'dpkg-reconfigure-locales' do
    command 'dpkg-reconfigure locales'
  end
when 'debian'
  execute 'update-locale' do
    command 'update-locale LANG=en_GB.UTF-8'
  end
end

