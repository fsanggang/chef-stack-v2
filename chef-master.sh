if ! dpkg --list chef-server-core > /dev/null 2>&1; then
  sudo dpkg -i /vagrant/chef-server-core_12.2.0-1_amd64.deb;
fi

if ! [ -e /etc/opscode/pivotal.rb ]; then
  chef-server-ctl reconfigure
fi

chef-server-ctl user-create admin admin admin fiona@showgizmo.com password --filename /vagrant/files/admin.pem
chef-server-ctl org-create chef-stack-demo "chef-stack-demo" --association_user admin --filename /vagrant/files/validator.pem