%w[
  htop tmux vim tree git ack-grep exuberant-ctags curl keychain ranger dict highlight w3m caca-utils atool
].each do |name|
  package name
end

link '/usr/local/bin/ack' do
  to '/usr/bin/ack-grep'
  owner 'root'
  group 'root'
end
