template '/etc/nginx/sites-enabled/sample.com' do
  #  source 'sample.com.erb'
    owner 'root'
    group 'root'
    mode  '0755'
    variables( :port => '80')
end

