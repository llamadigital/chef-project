package 'ruby1.9.1-full'
package 'ruby1.9.1-dev'

execute 'update rubygems' do
  command '/usr/bin/gem update --system 1.8.25'
  user 'root'
  environment 'REALLY_GEM_UPDATE_SYSTEM' => 'true'
end

gem_package 'bundler' do
  gem_binary '/usr/bin/gem'
  version '1.2.5'
  action :install
end
