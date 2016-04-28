package "git" do
  action :install
end

execute "touch vaibhav.txt" do
  if { Dir.exist?("/home/ubuntu/git") }
  end
end

git "/home/ubuntu/git" do
  repository "https://github.com/vaibhavttnd/gitclone.git"
  reference "master"
  action :sync
end

