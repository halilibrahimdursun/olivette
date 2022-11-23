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

df = pd.read_excel(os.environ["SOURCE_FILE"], sheet_name="ShipMe Warehouse", engine="openpyxl", 
converters={'WARE':str,'CODE':int})

df['OPERATOR'] = df['OPERATOR'].str.upper()

df["WAREHOUSE_NUMBER"] = df["WARE"] + df["CODE"].astype(str)

df["WAREHOUSE_TYPE"] = ''
for i in range(len(df["WARE"])):
    if df["WARE"][i][1] == "A":
        df["WAREHOUSE_TYPE"][i] = "Manufacturing Plant"
    if df["WARE"][i][1] == "B":
        df["WAREHOUSE_TYPE"][i] = "Warehouse"

df["OWNERSHIP"] = ''
for i in range(len(df["WARE"])):
    # print(type(df["WARE"][i][1]))
    if int(df["WARE"][i][0]) == 1:
        df["OWNERSHIP"][i] = "Olivette"
    if int(df["WARE"][i][0]) == 2:
        df["OWNERSHIP"][i] = "Third Party"

print(df)

converter(df, os.environ["DATA_FOLDER"], "shipmewarehouse", "relation/v1")