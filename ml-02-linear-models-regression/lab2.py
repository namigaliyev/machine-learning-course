import pandas as pd
import matplotlib.puplot as plt
import seaborn as sns
import statmodels.api as sm

auto = pd.read_csv('Auto.csv', index_col = 'name')