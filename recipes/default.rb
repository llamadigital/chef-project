#
# Cookbook Name:: project
# Recipe:: default
#
# Copyright (C) 2012 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'project::set_locale'

include_recipe 'apt'
include_recipe 'ubuntu'
include_recipe 'users::sysadmins'
# include_recipe 'sudo' # TODO: this is having a problem with the config

include_recipe 'build-essential'
