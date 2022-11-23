#sapplant

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 > $(pwd -W)/schema/rdf/sapPlantInSpec.ttl\
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies feed-rdf \
     -base "http://rdf.olivette.org/" \
     -spec //data/schema/sources/sapPlantInSpec.json

#sapcounterparty

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 > $(pwd -W)/schema/rdf/sapCounterpartyInSpec.ttl\
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies feed-rdf \
     -base "http://rdf.olivette.org/" \
     -spec //data/schema/sources/sapCounterpartyInSpec.json

#pipyplant

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 > $(pwd -W)/schema/rdf/pipyPlantInSpec.ttl\
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies feed-rdf \
     -base "http://rdf.olivette.org/" \
     -spec //data/schema/sources/pipyPlantInSpec.json

#shipmewarehouse

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 > $(pwd -W)/schema/rdf/shipMeWarehouseInSpec.ttl\
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies feed-rdf \
     -base "http://rdf.olivette.org/" \
     -spec //data/schema/sources/shipMeWarehouseInSpec.json

#shipmehard

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 > $(pwd -W)/schema/rdf/shipMeHardInSpec.ttl\
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies feed-rdf \
     -base "http://rdf.olivette.org/" \
     -spec //data/schema/sources/shipMeHardInSpec.json

#shipmepartners

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 > $(pwd -W)/schema/rdf/shipMePartnersInSpec.ttl\
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies feed-rdf \
     -base "http://rdf.olivette.org/" \
     -spec //data/schema/sources/shipMePartnersInSpec.json

