from xmlrpc.client import boolean
from ouroboros.functions import converter
import sys
import os
import pandas as pd 
import numpy as np
import json
import openpyxl
from functions import string_converter
from dotenv import load_dotenv, find_dotenv
load_dotenv(find_dotenv())

desired_with = 320
pd.set_option("display.width", desired_with)
pd.set_option("display.max_columns", 20)
pd.set_option("display.max_rows", 800)

df = pd.read_excel(os.environ["SOURCE_FILE"], sheet_name="ShipMeHard", engine="openpyxl", 
converters={'CODE':int,'TAX FREE':int, 'FACILITY RENEW':str})

df["FACILITY RENEW"] = df["FACILITY RENEW"].str[:10]
# df["LICENSE NUMBER"] = ''
# for i in range(len(df["WARE"])):
#     if df["TAX FREE"][i] == 1:
#         df["LICENSE NUMBER"][i] = df["WARE"][i] + str(df["CODE"][i]) + str(df["FACILITY RENEW"][i])[:10]

for i in range(len(df["TAX FREE"])):
    if df["TAX FREE"][i] == 1:
        df["TAX FREE"][i] = "Tax Free"
    else:
        df["TAX FREE"][i] = "Taxed"
print(df.head(30))

converter(df, os.environ["DATA_FOLDER"], "shipmehard", "relation/v1")