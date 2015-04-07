name             'python-django'
maintainer       'T.J. Cravey'
maintainer_email 'thomas.cravey@rackspace.com'
license          'All rights reserved'
description      'Installs/Configures python-django'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ apt build-essential python apache2 }.each do |cb|
	depends cb
end

depends 'mysql', '5.3.6'
