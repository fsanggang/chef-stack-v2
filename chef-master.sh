if ! dpkg --list chef-server-core > /dev/null 2>&1; then
  sudo dpkg -i /vagrant/chef-server-core_12.2.0-1_amd64.deb;
fi