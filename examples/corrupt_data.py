def shuffle_rows(df):
    import random
    index = [i for i in df.index]
    index_o = [i for i in df.index]
    random.shuffle(index)
    df = df.ix[index]
    df.reset_index()
    df.index = index_o
    return df

