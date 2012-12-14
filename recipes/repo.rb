remote_file "/etc/yum.repos.d/openvz.repo" do
  source node.openvz.yum.repo_url
  mode 00644
  owner "root"
  group "root"
  not_if { File.exists? "/etc/yum.repos.d/openvz.repo" }
end

bash "Import Openvz GPG key" do
  code "rpm --import #{node.openvz.yum.gpg_key}"
  only_if { node.openvz.yum.gpg_key }
end
