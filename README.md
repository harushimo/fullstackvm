#Tournament Results

##Install vagrant on your computer

Vagrant needs to be installed on your computer.  Here a link to install [vagrant](http://vagrant.io)

##Get the full stack vm

You can get the vm from the course notes.

## VM and vagrant

Once you have downloaded the vm and done your installation of vagrant.  You need to do the following things

1. ```cd FSND-Virtual-Machine/vagrant```
2.  Once in the vagrant, you must first do: ```vagrant up```.  This setups the virtual machine
3. After the VM is setup, ```vagrant ssh```

When you are in the vm, you will need to connect PostgreSQL database.

## Connecting to PostgreSQL database in vagrant

In order to access PostgreSQL, you must type psql in the vagrant vm

1. Create the database in PostgreSQL: ```create database tournament;```
2. After creating the database, import the sql tables and views by ```\i tournament.sql```
