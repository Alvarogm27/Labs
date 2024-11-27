#
# Copiar ficheros de configuración de apache2 que incluyen:
#
# - apache2.conf,
# - apolo.olimpo.test.conf
# - atenea.olimpo.test.conf
#

# tu código aquí
cp -v /vagrant/files/apache2/apache2.conf /etc/apache2/apache2.conf
cp -v /vagrant/files/apache2/apolo.olimpo.test.conf /etc/apache2/sites-available/apolo.olimpo.test.conf
cp -v /vagrant/files/apache2/atenea.olimpo.test.conf /etc/apache2/sites-available/atenea.olimpo.test.conf
#
# Habilitar los servidores virtuales
#

# tu código aquí
a2ensite apolo.olimpo.test.conf
a2ensite atenea.olimpo.test.conf
#
# Reiniciar el servicio
#

# tu código aquí
systemctl restart apache2