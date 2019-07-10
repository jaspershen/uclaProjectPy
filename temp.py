import os as os
import pandas as pd

os.chdir(path = "E:/project/UCLA")
os.getcwd()
file = os.listdir()
sample_info = pd.read_csv("sample.info.csv")

type(sample_info)


sample_info.describe()
sample_info[0:1]