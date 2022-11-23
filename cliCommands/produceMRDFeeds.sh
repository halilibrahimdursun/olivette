#listing feed

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data datasingularity/dsgo-cli:snapshot-0.15.0 \
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies \
     -output //data/mrdFeeds/persons-listing.json  \
      target-feed   \
     -spec //data/targetSchema/personAnalyticsOutSchema.json\
     -listing

#relational feed

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data datasingularity/dsgo-cli:snapshot-0.15.0 \
     -debug -sparql-query http://admin:admin@localhost:5820/olivette/query \
     -graph http://rdf.olivette.org/graphs/data -graph http://rdf.olivette.org/graphs/ontologies \
     -output //data/mrdFeeds/persons-relations.json  \
      target-feed   \
     -spec //data/targetSchema/personAnalyticsOutSchema.json\