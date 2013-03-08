%w[
  htop tmux vim tree git ack-grep exuberant-ctags curl keychain ranger dict highlight
].each do |name|
  package name
end

link '/usr/local/bin/ack' do
  to '/usr/bin/ack-grep'
  owner 'root'
  group 'root'
end
