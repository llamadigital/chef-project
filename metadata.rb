name             'project'
maintainer       'Jon Doveston'
maintainer_email 'jon@doveston.me.uk'
license          'All rights reserved'
description      'Installs/Configures projects'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'ubuntu'
depends 'users', '1.1.2' # this version works with chef solo search
depends 'sudo'
depends 'postgresql'
