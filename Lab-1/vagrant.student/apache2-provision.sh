#
# Copiar ficheros de configuración de apache2 que incluyen:
#
# - apache2.conf,
# - apolo.olimpo.test.conf
# - atenea.olimpo.test.conf
#

# tu código aquí
cp -v /vagrant/files/apache2/apache2.conf /etc/apache2/
cp -v /vagrant/files/apache2/apolo.olimpo.test.conf /etc/apache2/sites-available/
cp -v /vagrant/files/apache2/atenea.olimpo.test.conf /etc/apache2/sites-available/
#
# Habilitar los servidores virtuales
#

# tu código aquí
a2dissite 000-default.conf
a2ensite apolo.olimpo.test.conf

a2dissite 000-default.conf
a2ensite atenea.olimpo.test.conf
#
# Reiniciar el servicio
#

# tu código aquí
systemctl restart apache2