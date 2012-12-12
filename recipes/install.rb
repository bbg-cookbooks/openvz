remote_file "/etc/yum.repos.d/openvz.repo" do
  source node.openvz.yum.repo_url
  mode 00644
  owner "root"
  group "root"
end

bash "Import Openvz GPG key" do
  code "rpm --import  http://download.openvz.org/RPM-GPG-Key-OpenVZ"
end
