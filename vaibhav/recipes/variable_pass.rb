template '/etc/nginx/sites-enabled/vh1' do
  #  source 'sample.com.erb'
    owner 'root'
    group 'root'
    mode  '0755'
    variables( :port => '80')
end

