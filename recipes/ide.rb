%w[
  htop tmux vim tree git ack-grep exuberant-ctags curl
].each do |name|
  package name do
    action :install
  end
end

link '/usr/local/bin/ack' do
  to '/usr/bin/ack-grep'
  owner 'root'
  group 'root'
end
