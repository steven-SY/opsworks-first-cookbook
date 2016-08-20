bash "change system greeting" do
  user "root"
  code <<-EOH
  echo "Hello OpsWorks World" > /etc/motd
  EOH
end

bash "security update" do
  user "root"
  code <<-EOH
  yum -y update --security
  EOH
end