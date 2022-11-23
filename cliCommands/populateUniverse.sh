#Populate ontologies graph

#loading the ontologies

winpty docker run -it --net host -v /$(pwd -W)//ontologies://data datasingularity/dsgo-cli:snapshot-0.15.0\
 -debug -sparql-graph http://admin:admin@localhost:5820/olivette -graph http://rdf.olivette.org/graphs/ontologies load //data/*.ttl


#loading metalanguage

winpty docker run -it --net host -v /$(pwd -W)//../metalanguage/metalanguage-master://data datasingularity/dsgo-cli:snapshot-0.15.0\
 -debug -sparql-graph http://admin:admin@localhost:5820/olivette  -graph http://rdf.olivette.org/graphs/ontologies load  //data/metalanguage.ttl

winpty docker run -it --net host -v /$(pwd -W)//../metalanguage/metalanguage-master://data datasingularity/dsgo-cli:snapshot-0.15.0\
 -debug -sparql-graph http://admin:admin@localhost:5820/olivette  -graph http://rdf.olivette.org/graphs/data load  //data/ini.ttl