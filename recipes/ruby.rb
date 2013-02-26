package 'ruby1.9.1-full'
package 'ruby1.9.1-dev'

execute 'update rubygems' do
  command '/usr/bin/gem update --system'
  user 'root'
  environment 'REALLY_GEM_UPDATE_SYSTEM' => 'true'
end

%w[bundler].each do |gem_name|
  gem_package gem_name do
    gem_binary '/usr/bin/gem'
    action :install
  end
end
