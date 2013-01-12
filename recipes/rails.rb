%w[
  nodejs imagemagick libproj-dev proj libxml2-dev libxslt1-dev
].each do |name|
  package name do
    action :install
  end
end
