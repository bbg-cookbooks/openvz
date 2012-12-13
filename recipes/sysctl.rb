node.openvz.sysctl.each do |k,v|
  execute "sysctl -w #{k}=#{v}"
end
