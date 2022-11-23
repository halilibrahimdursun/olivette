import pandas as pd


def string_converter(df, col_na):
    """
    Takes a series and converts the non-null values to string format.
    Returns the series
    Params:
    @df     => dataframe (object)
    @col_na => column name (string)

    Returns:
    series
    """

    df[f'{col_na}'] = df[f'{col_na}'].apply(
        lambda x: str(x).replace(".0", "") if pd.notna(x) and str(x)[-2:] == ".0" else str(x) if pd.notna(x) else x)

    return df[f'{col_na}']