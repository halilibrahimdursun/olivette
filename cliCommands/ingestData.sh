#sapplant

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
 -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
 -input //data/data/sapplant.json \
 -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies source-store \
 -base "http://rdf.olivette.org"  \
 -spec //data/schema/sources/sapPlantInSpec.json


#sapcounterparty

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
 -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
 -input //data/data/sapcounterparty.json \
 -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies source-store \
 -base "http://rdf.olivette.org"  \
 -spec //data/schema/sources/sapCounterpartyInSpec.json

#pipyplant

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
 -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
 -input //data/data/pipyplant.json \
 -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies source-store \
 -base "http://rdf.olivette.org"  \
 -spec //data/schema/sources/pipyPlantInSpec.json

#shipmewarehouse

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
 -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
 -input //data/data/shipmewarehouse.json \
 -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies source-store \
 -base "http://rdf.olivette.org"  \
 -spec //data/schema/sources/shipMeWarehouseInSpec.json

#shipmehard

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
 -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
 -input //data/data/shipmehard.json \
 -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies source-store \
 -base "http://rdf.olivette.org"  \
 -spec //data/schema/sources/shipMeHardInSpec.json

#shipmepartners

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
 -debug -sparql-query http://admin:admin@localhost:5820/olivette/query -sparql-update http://admin:admin@localhost:5820/olivette/update -sparql-graph http://admin:admin@localhost:5820/olivette/ \
 -input //data/data/shipmepartners.json \
 -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies source-store \
 -base "http://rdf.olivette.org"  \
 -spec //data/schema/sources/shipMePartnersInSpec.json

