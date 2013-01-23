%w[
  nodejs imagemagick libproj-dev proj libxml2-dev libxslt1-dev sqlite3 libsqlite3-dev
].each do |name|
  package name do
    action :install
  end
end
