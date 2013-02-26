%w[
  imagemagick libproj-dev libxml2-dev libxslt1-dev sqlite3 libsqlite3-dev libzmq-dev
].each do |name|
  package name
end

case node['platform']
when 'ubuntu'
  package 'nodejs'
when 'debian'
  # TODO js runtime or nodejs from somewhere
end
