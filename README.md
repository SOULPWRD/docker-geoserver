# DOCKERIZED GEOSERVER

An automatized dockerization of the latest stable GeoServer realese available at the official [GeoServer](http://geoserver.org/release/stable/) webpage.
GeoServer is build upon the [Apache Tomcat8](https://tomcat.apache.org/) applet server.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* Unix based system
* [Docker](https://www.docker.com/)

**Please note!**

Currently the project runs only on Unix systems.

### Installing

The only thing needed to be done is to run bash script *install.sh*.

```
$ bash install.sh
```

What script does?

* Create a temporary folder for a downloaded file
* Download the latest stable war file in .zip format 
* Unzip the file
* Build a docker image from Dockerfile

Dockerfile

* Pull a Tomcat8 image from hub
* Copy the unziped geoserver.war file from the temporary folder into the Tomcat8 webapps folder
* Run *catalina.sh*  

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

