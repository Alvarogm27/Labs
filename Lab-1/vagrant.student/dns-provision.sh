cp -v /vagrant/files/ns1.olimpo.test/named /etc/default/named
cp -v /vagrant/files/ns1.olimpo.test/named.conf.options /etc/bind/named.conf.options
cp -v /vagrant/files/ns1.olimpo.test/named.conf.local /etc/bind/named.conf.local
cp -v /vagrant/files/ns1.olimpo.test/olimpo.test.dns /var/lib/bind/db.olimpo.test
cp -v /vagrant/files/ns1.olimpo.test/192.168.57.dns /var/lib/bind/db.192.168.57

chown bind:bind /var/lib/bind/db.olimpo.test /var/lib/bind/db.192.168.57
chmod 644 /var/lib/bind/db.olimpo.test /var/lib/bind/db.192.168.57

systemctl restart named

systemctl status named