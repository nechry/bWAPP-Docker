# bWAPP-Docker ![bWAPP](bWAPP/images/bee_1.png)

This Docker image is specifically created for the [bWAPP](http://www.itsecgames.com/) application version 2.2, which serves as a learning and demonstration platform for various web application vulnerabilities.

## Why?

Installing and configuring PHP-based web apps can be quite time-consuming as you need to install various packages like PHP, Apache, MySQL, etc...
This Docker image eliminates(automates;) this tedious process and provides you with a click-and-run solution that will provide you with a bWAPP instance in a few seconds.

Other Dockers already exist for bWAPP, but they contain netcat-openbsd instead of netcat-traditional for a reverse shell. I just swapped the two packages.

## Setup

## Build your own Docker image

Feel free to clone the repository and modify the bWAPP app as required.

To build the Docker image, run the following command in the root of the repository.

```bash
docker build . -t nechry/bwapp-docker:latest
```

### Pull the Docker image

This repo provides you with a prebuilt Docker image that you can pull and run in seconds.

```bash
docker pull nechry/bwapp-docker:latest
```

### Running the bWAPP container

```bash
docker run -d -p 80:80 --hostname bwapp --name bwapp nechry/bwapp-docker:latest
```

## Installing bWAPP

After running the bWAPP container, navigate to [http://127.0.0.1/install.php](http://127.0.0.1/install.php) to complete the bWAPP setup process.

### Manually initialize the bWAPP database

You can also manually initialize the bWAPP database by running the following commands, but usually, this is not required.

Connection to the bWAPP container

```bash
docker exec -ti bwapp bash
```

Connect to MySQL server

```bash
mysql -uroot -p
```

Paste the content of the [SQL bwapp_schema.sql](bwapp_schema.sql) script.
