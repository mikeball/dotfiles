
# create postgres user, and verify password exists
sudo passwd postgres
cat /etc/passwd

# set password
sudo passwd postgres


# create the db data/config directory
sudo mkdir /usr/local/pgsql
sudo chown postgres /usr/local/pgsql


# initialize the database(cluster) config
su postgres
initdb -D /usr/local/pgsql/data


# start postgres server as user postgres
su postgres
postgres -D /usr/local/pgsql/data


# from a different terminal setup user for everyday use
su postgres
psql
create database mike with owner mike encoding 'UTF8';
create role mike with password 'password';
alter role "mike" with login createdb createrole;
