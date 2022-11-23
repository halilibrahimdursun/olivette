import stardog 
import pandas as pd
from ouroboros.functions import converter

def runQuery(query):
    conn_details = {
        'endpoint': 'http://localhost:5820',
        'username': 'admin',
        'password': 'admin'
    }
    with stardog.Connection('olivette', **conn_details) as conn:
        results = conn.select(query)
    return results

query = runQuery('''SELECT *
WHERE { GRAPH <http://rdf.olivette.org/graphs/data>
{  ?s ?p ?o .
      }}''')
# print(query)
mapping_dict = {}
for column in query['head']['vars']:
    mapping_dict[column] = []
    for binding in query['results']['bindings']:
        mapping_dict[column].append(binding[column]['value'])
# print(mapping_dict)

df = pd.DataFrame.from_dict(mapping_dict)
print(df.head(30))