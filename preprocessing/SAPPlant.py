from xmlrpc.client import boolean
from ouroboros.functions import converter
import sys
import os
import pandas as pd 
import numpy as np
import json
import openpyxl
from dotenv import load_dotenv, find_dotenv
load_dotenv(find_dotenv())

desired_with = 320
pd.set_option("display.width", desired_with)
pd.set_option("display.max_columns", 20)
pd.set_option("display.max_rows", 800)

df = pd.read_excel(os.environ["SOURCE_FILE"], sheet_name="SAP Plant", engine="openpyxl")
# df.assign(Level=pd.Series(object))
df["ACTIVE"] = df["ACTIVE"].astype(int)
# df["CountryName"] = ""

# f = open(r"C:\Users\Lenovo\Desktop\Semantics\olivette\data\geonamesCountries.json", encoding='utf8')
# data = json.load(f)
# f.close()

# for i in range(len(df["Country"])):
#     for j in range(len(data['values'])):
#         if df["Country"][i] == data['values'][j][1]:
#             df["CountryName"][i] = data['values'][j][4]
#             break
#         elif df["Country"][i] == data['values'][j][5]:
#             df["CountryName"][i] = data['values'][j][4]
#             break

print(df.head(10))

converter(df, os.environ["DATA_FOLDER"], "sapplant", "relation/v1")