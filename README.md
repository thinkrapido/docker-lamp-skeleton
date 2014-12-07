docker-lamp-skeleton
====================

Dockerflie project creating a skeleton based on docker-lamp

## Description

This Dockerfile project creates a web project image up [thinkrapido/docker-lamp][1] to create a predefined LAMP environment.

## Prerequisites

First create a lamp image as described in [thinkrapido/docker-lamp][1].

## Usage

### Get this project

```
git clone https://github.com/thinkrapido/docker-lamp-skeleton.git
cd docker-lamp-sekeleton
```

### Copy your php project into webapp folder

The config for the mysql server should be:

```
hostname: localhost
database: webapp
user:     root
password: root
```

### Install dependencies

```
./install.sh
```

This will install the dependencies of a [composer][2] project if a compser.phar
file is present in webapp folder.

### Build the image

```
./build.sh
```

If your web project contains a `data/fixture` folder it will get the latest of your database fixtures and dumps it into the mysql server.

This folder will be sorted by name and the first one with extension `.sql` will be selected.

The files in it should have a file name like this: `fixture-2014-12-14.sql`.

### Run it

```
./run.sh
```

### (Optional) Remove container from conainer list

```
./remove.sh
```

### Access the Webapp

While the container is running, call the application via http://localhost whitin your browser.

Apache logs will be present in logs folder.

### Access MySql Server from the Command Line

```
mysql -u root -p root -h 127.0.0.1
```

## Recomendation

Feel free to look in every file and customize them to your needs.

If you use a PHP framework like Zend Framework 2 the `index.php` resides in folder `webapp/public`. To get access to it, adjust the `vhost.conf` file. (DocumentRoot and Directory entries)

---

I hope you enjoy it!

[1]: https://github.com/thinkrapido/docker-lamp
[2]: https://getcomposer.org/
