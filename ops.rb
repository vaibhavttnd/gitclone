package "nginx" do
  action :install
end

git "/home/vaibhav/git" do
  repository "https://github.com/vaibhavttnd/gitclone.git"
  reference "master"
  action :sync
end
