#interop feeds

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
    -debug -sparql-query http://admin:admin@localhost:5820/olivette/query \
    -output //data/interopFeeds/worktimePerson.json \
    dressing \
    -class http://rdf.olivette.org/person#Person \
    -source WorkTime

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
    -debug -sparql-query http://admin:admin@localhost:5820/olivette/query \
    -output //data/interopFeeds/costlyPerson.json \
    dressing \
    -class http://rdf.olivette.org/person#Person \
    -source Costly

winpty -Xallow-non-tty -Xplain docker run -it --net host -v /$(pwd -W)://data  datasingularity/dsgo-cli:snapshot-0.15.0 \
    -debug -sparql-query http://admin:admin@localhost:5820/olivette/query \
    -output //data/interopFeeds/hrRegistryPerson.json \
    dressing \
    -class http://rdf.olivette.org/person#Person \
    -source HRRegistry
    