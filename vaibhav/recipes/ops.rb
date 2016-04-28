package "git" do
  action :install
end

execute "touch vaibhav" do
  if { Dir.exist?("/home/ubuntu/git") }
end

git "/home/ubuntu/git" do
  repository "https://github.com/vaibhavttnd/gitclone.git"
  reference "master"
  action :sync
end

