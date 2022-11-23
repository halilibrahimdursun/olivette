#loadALL

winpty docker run -it --net host -v /$(pwd -W)//schema/rdf://data datasingularity/dsgo-cli:snapshot-0.15.0\
    -debug -sparql-graph http://admin:admin@localhost:5820/olivette  -graph http://rdf.olivette.org/graphs/ontologies load  //data/*.ttl