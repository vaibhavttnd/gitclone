package "git" do
  action :install
end


#install git if required

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


if Dir.exist?("/home/ubuntu/git")
         git "/home/ubuntu/git" do
         repository "https://github.com/vaibhavttnd/gitclone.git"
         reference "master"
         action :sync
       end
else
       execute "sudo mkdir /home/ubuntu/git2" #do
     #  not_if { Dir.exist?("/home/ubuntu/git") }
#end
end


