remote_file "#{Chef::Config[:file_cache_path]}/msgpack.tar.gz" do
  source "#{node['php-msgpack']['url']}"
end

bash 'make & install msgpack' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
	  tar zxf msgpack.tar.gz
	  cd msgpack-php-master
	  phpize
	  ./configure
	  make && make install
  EOF
end

node['php']['conf_dirs'].each do |conf_dir|
	file "#{conf_dir}/#{node['php-msgpack']['conf_file']}" do
		owner 'root'
		group 'root'
		mode '0644'
		content 'extension=msgpack.so'
	end
end
