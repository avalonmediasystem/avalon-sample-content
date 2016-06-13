# avalon-sample-content
Scripts to build the sample content RPM

# Steps to create an RPM:
The following steps will help convert an old sample content RPM to a newer Avalon-compatible version

* Install the old sample rpm on its respective Avalon.
* Run ```avalon-installer``` update script to bring Avalon and its content to latest version.
* Make sure the samples still play on new Avalon.
* Download and unzip avalon-sample-content-flat scripts
* Copy ```/usr/share/avalon-sample-content``` into the unzipped directory
* Modify ```build-sample-content.sh``` to reflect the new version
* ```bundle install``` to install fpm
* Run ```build-sample-content.sh``` to make the rpm package
