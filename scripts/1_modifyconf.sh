#!/bin/bash
##sudo echo "host all  all    0.0.0.0/0 md5" >> /etc/postgresql/10/main/pg_hba.conf
##sudo echo "listen_addresses='*'" >> /etc/postgresql/10/main/postgresql.conf
sudo cp /etc/postgresql/10/main/pg_hba.conf /etc/postgresql/10/main/pg_hba_backup.conf
sudo cp /etc/postgresql/10/main/postgresql.conf /etc/postgresql/10/main/postgresql_backup.conf

##sudo sed 's+host    all             all             127.0.0.1/32            md5+host    all             all             0.0.0.0/0            md5+' /etc/postgresql/10/main/pg_hba.conf > /etc/postgresql/10/main/pg_hba_new.conf
sudo sed -i 's+host    all             all             127.0.0.1/32            md5+host    all             all             0.0.0.0/0            md5+' /etc/postgresql/10/main/pg_hba.conf

##sudo sed 's+#listen_addresses = '\''localhost'\''         # what IP address(es) to listen on;+listen_addresses = '\''*'\''         # what IP address(es) to listen on;+' /etc/postgresql/10/main/postgresql.conf > /etc/postgresql/10/main/postgresql_new.conf
sudo sed -i 's+#listen_addresses = '\''localhost'\''         # what IP address(es) to listen on;+listen_addresses = '\''*'\''         # what IP address(es) to listen on;+' /etc/postgresql/10/main/postgresql.conf
