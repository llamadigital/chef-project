package 'stow'

directory '/usr/local/stow' do
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

ruby_build_ruby 'jruby-1.7.1' do
  action :install
  prefix_path '/usr/local/stow'
end

execute 'stow jruby' do
  command 'stow -R -d /usr/local/stow -t /usr/local jruby-1.7.1'
  user 'root'
end

execute 'update rubygems' do
  command '/usr/local/stow/jruby-1.7.1/bin/gem update --system'
  user 'root'
end

%w[bundler].each do |gem_name|
  gem_package gem_name do
    gem_binary '/usr/local/stow/jruby-1.7.1/bin/gem'
    options '--no-ri --no-rdoc'
    action :install
  end
end

execute 'restow jruby' do
  command 'stow -R -d /usr/local/stow -t /usr/local jruby-1.7.1'
  user 'root'
end
