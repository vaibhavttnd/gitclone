#include_recipe 'vaibhav::apache'
#include_recipe 'vaibhav::git'


include_recipe 'vaibhav::nginx'

#execute "touch vaibhav.txt" do
#  not_if { File.exist?("/vol/postgres/data") }
#end

#execute "touch /home/ubuntu/vaibhav2.txt" do
#  not_if { File.exist?("/vol/postgres/data") }
#end

#execute "touch /home/ubuntu/notexist.txt" do
#  not_if { Dir.exist?("/home/ubuntu/bit") }
#end

#clone if directory exits , but git by itself can create a new directory and clone in it

#if Dir.exist?("/home/ubuntu/git")
#	  git "/home/ubuntu/git" do
#	  repository "https://github.com/vaibhavttnd/gitclone.git"
#   	  reference "master"
#  	  action :sync
#	end
#else
#	execute "touch /home/ubuntu/notexist2.txt" do
#        not_if { Dir.exist?("/home/ubuntu/bit") }
#end
#end

# Q1 start

#if Dir.exist?("/home/ubuntu/git")
#         git "/home/ubuntu/git" do
#         repository "https://github.com/vaibhavttnd/gitclone.git"
#         reference "master"
#         action :sync
#       end
#else
#       execute "sudo mkdir /home/ubuntu/git" 
#end

#Q1 end

#Q2 start
#template '/etc/nginx/sites-enabled/vh1' do
#    source 'sample.com.erb'
#    owner 'root'
#    group 'root'
#    mode  '0755'
#    variables( :port => '80')
#end

#template '/etc/nginx/sites-enabled/vh2' do
#    source 'sample.com.erb'
#    owner 'root'
#    group 'root'
#    mode  '0755'
#    variables( :port => '81')
#end

#execute "sudo service nginx restart"	

#Q2 end


file '/etc/nginx/sites-enabled/default' do	
	action :delete
end
