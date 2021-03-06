import json
import pandas as pd
import numpy as np
import shutil

# Step 1: Get parameters N, q, B, P, tickers, sigma, and mu from data
f = open('data/outN20q1B10P100.json')
data = json.load(f)

N = data['N']               # Universe size
q = data['q']               # Risk appetite
B = data['B']               # Budget
# P = data['P']               # Penalization factor
tickers = data['tickers']   # Tickers
print(tickers)
mu = pd.Series(data['mu'])
sigma = pd.DataFrame.from_dict(data['sigma'], orient='index')

P = 0.89874
# Step 2: Create ampl file from both linearized and IPL_linearized templates
shutil.copy2('src/ampl/linearized_template.ampl',
            'src/ampl/findP/linearized_N{}q{}B{}P{}.ampl'.format(N, q, B, P))

with open('src/ampl/findP/linearized_N{}q{}B{}P{}.ampl'.format(N, q, B, P), 'a') as f:
    solution_file_name = 'results/linearized_N{}q{}B{}P{:.5f}_solution.json'.format(N, q, B, P)

    f.write('printf: "{{ ""solution"": [%d", x[1] > "{}";\n'.format(solution_file_name))
    f.write('printf{{i in 2..n}}: ",%d", x[i] >> "{}";\n'.format(solution_file_name))
    f.write('printf: "]}}" >> "{}";\n'.format(solution_file_name))
    
    f.write('\n#data:\ndata;\n\n')
    f.write('param n := {};\n'.format(N))
    f.write('param q := {};\n'.format(q))
    f.write('param B := {};\n'.format(B))
    f.write('param P := {};\n'.format(P))

    f.write('param mu :=')
    for i in range(N):
        f.write('\n{} {}'.format(i+1, mu[tickers[i]]))
    f.write(';\n')

    f.write('param sigma :')
    for i in range(N):
        f.write(' {}'.format(i+1))
    f.write(' :=')

    for i in range(N):
        f.write('\n{}'.format(i+1))
        for j in range(N):
            f.write(' {}'.format(sigma[tickers[i]][tickers[j]]))

    f.write(';\nend;\n')
