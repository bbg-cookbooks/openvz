directory "/etc/sysctl.d/" do
  recursive true
end

template "/etc/sysctl.d/openvz" do
  source "openvz.erb"
  mode  00600
  user  "root"
  group "root"
end
