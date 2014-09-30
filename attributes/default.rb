default['php-msgpack']['url'] = 'https://github.com/msgpack/msgpack-php/archive/master.tar.gz'

case platform_family
	when "rhel", "fedora"

		default['php-msgpack']['conf_dirs'] = ['/etc/php.d']
		default['php-msgpack']['conf_file'] = 'msgpack.ini'

	when "debian"

		default['php-msgpack']['conf_dirs'] = ['/etc/php.d']
		default['php-msgpack']['conf_file'] = '30-msgpack.ini'

end
