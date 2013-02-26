#
# Cookbook Name:: project
# Recipe:: default
#
# Copyright (C) 2012 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'apt'

case node['platform']
when 'ubuntu'
  include_recipe 'project::set_locale'
  include_recipe 'ubuntu'
when 'debian'
end

include_recipe 'users::sysadmins'
# include_recipe 'sudo' # TODO: this is having a problem with the config

include_recipe 'build-essential'
