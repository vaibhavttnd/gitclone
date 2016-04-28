package "git" do
  action :install
end

#execute "touch vaibhav.txt" do
#  not_if { File.exist?("/vol/postgres/data") }
#end

execute "touch /home/ubuntu/vaibhav2.txt" do
  not_if { File.exist?("/vol/postgres/data") }
end


git "/home/ubuntu/git" do
  repository "https://github.com/vaibhavttnd/gitclone.git"
  reference "master"
  action :sync
end

