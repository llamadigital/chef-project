#
# Cookbook Name:: project
# Recipe:: default
#
# Copyright (C) 2012 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'project::set_locale'

case node['platform']
when 'ubuntu'
  include_recipe 'ubuntu'
  include_recipe 'users::sysadmins'
  # include_recipe 'sudo' # TODO: this is having a problem with the config
when 'debian'
end
