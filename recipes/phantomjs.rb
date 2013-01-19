package 'stow'

directory '/usr/local/stow' do
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

phantom = 'phantomjs-1.8.1-linux-x86_64'

remote_file "/tmp/#{phantom}.tar.bz2" do
  source "http://phantomjs.googlecode.com/files/#{phantom}.tar.bz2"
  owner 'root'
  group 'root'
  action :create_if_missing
end

execute 'extract phantomjs' do
  command "tar -xjvf /tmp/#{phantom}.tar.bz2 -C /usr/local/stow"
  creates "/usr/local/stow/#{phantom}"
end

execute 'stow phantomjs' do
  command "stow -R -d /usr/local/stow -t /usr/local #{phantom}"
  user 'root'
end
