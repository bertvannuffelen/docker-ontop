# Docker-Ontop

This docker deploys the Ontop system. 


The [-ontop-](http://ontop.inf.ubibz.it) framework is an open source project available under the terms of the 
[Apache 2.0 License](http://www.apache.org/licenses/LICENSE-2.0.txt). 
The usage of the this docker implies the agreement with this license. 

## version

This includes version 1.17.0 and 18.0.1. The latest is deployed.
For more information on the release and status of the project see https://github.com/ontop/ontop/wiki/OntopReleases 
Official Website Ontop: http://ontop.inf.unibz.it/


## Running the docker

```
sudo docker run  -i -p 8080:8080 --name ontop-webapp -v /home/vagrant/OSLO/docker-ontop/data:/data docker-ontop
```



