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

df = pd.read_excel(os.environ["SOURCE_FILE"], sheet_name="SAP Counterparty", engine="openpyxl", 
converters={'KUNNR':str,'INTERCMP':int,'XCHANGE':int,'CDSELL':int,'BOTTLE':int})

df['ACCT'] = df['ACCT'].str.upper()

for i in range(len(df["FUNC"])):
    if df["FUNC"][i] == "Sold-to":
        df["FUNC"][i] = "Customer"

for i in range(len(df["XCHANGE"])):
    if df["XCHANGE"][i] == 1:
        df["XCHANGE"][i] = "Exchange"
    else:
        df["XCHANGE"][i] = np.nan

for i in range(len(df["CDSELL"])):
    if df["CDSELL"][i] == 1:
        df["CDSELL"][i] = "Clean Discharge"
    else:
        df["CDSELL"][i] = np.nan

for i in range(len(df["BOTTLE"])):
    if df["BOTTLE"][i] == 1:
        df["BOTTLE"][i] = "Bottling"
    else:
        df["BOTTLE"][i] = np.nan

df_try = df[df.INTERCMP.eq(1)]
df_try["FUNC"] = "Vendor"
# print(df_try)
df = df.append(df_try, ignore_index=True)
string_converter(df, "KUNNR")

df["CONTRACT"] = df["XCHANGE"].fillna(df["CDSELL"].fillna(df["BOTTLE"]))
df_try2 = df[df[["XCHANGE", "CDSELL", "BOTTLE"]].isna().sum(axis=1).eq(True)]
df_try2["CONTRACT"] = 'Bottling'
df = df.append(df_try2, ignore_index=True)

print(df)

converter(df, os.environ["DATA_FOLDER"], "sapcounterparty", "relation/v1")