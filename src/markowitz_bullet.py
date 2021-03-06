import numpy as np
import matplotlib.pyplot as plt
import json
import pandas as pd
import os

# Step 1: Get parameters N, q, B, P, tickers, sigma, and mu from data
f = open('data/out_N50_p1mo_i1d.json')
data = json.load(f)

N = data['N']               # Universe size
#q = data['q']               # Risk appetite
q = 1
B = int(N*0.6)
tickers = data['tickers']   # Tickers
mu = pd.Series(data['mu'])
sigma = pd.DataFrame.from_dict(data['sigma'], orient='index')

min_sigma = 0
for i in range(N):
    for j in range(i+1, N):
        if sigma[tickers[i]][tickers[j]] < 0:
            min_sigma += sigma[tickers[i]][tickers[j]]

max_mu = 0
for i in range(N):
    if mu[tickers[i]] > 0:
        max_mu += mu[tickers[i]]

P = -q * min_sigma + max_mu

returns = []
colors = []
solutions = []
objectives = []
risks = []
labels = []
file_num = 0

for filename in os.listdir('results/scenario2_B0.8_classical')+os.listdir('results/scenario2_B0.8_normal_fixed_chain_strength'):
    if '.csv' in filename:
        ff = open('results/scenario2_B0.8_normal_fixed_chain_strength/' + filename)

        start = filename.rfind('q')
        end = filename.rfind('B')

        print('File #{}: \tCSV \t{}'.format(
            file_num, filename))

        rets = []
        rsks = []

        for best_solution_line in ff.readlines()[1:]:
            best_solution = []
            for i in range(N):
                best_solution.append(int(best_solution_line[i*2]))

            num_occur = int(best_solution_line.split(',')[-1])

            if sum(best_solution) != B:
                continue

            portfolio_return = 0
            portfolio_risk = 0

            for i in range(N):
                portfolio_return += best_solution[i] * mu[tickers[i]]
                portfolio_risk += best_solution[i] * sigma[tickers[i]
                                                        ][tickers[i]] * sigma[tickers[i]][tickers[i]]

            portfolio_return /= N

            for i in range(N):
                for j in range(i+1, N):
                    portfolio_risk += 2 * best_solution[i] * \
                        best_solution[j] * sigma[tickers[i]][tickers[j]]

            obj = q*np.transpose(best_solution).dot(sigma).dot(best_solution) - np.transpose(mu).dot(best_solution) + P * np.square(np.ones((1,N)).dot(best_solution) - B)

            for i in range(num_occur):
                returns.append(portfolio_return)
                risks.append(portfolio_risk)
                solutions.append(best_solution)
                objectives.append(obj[0])
                rets.append(portfolio_return)
                rsks.append(portfolio_risk)
                labels.append(filename[start:end])
                if sum(best_solution) != B:
                    colors.append('#000000') # black
                else: 
                    colors.append('#ff0000') # red
            #break # Remove comment to show best solution only
        file_num += 1
    elif '.json' in filename:
        ff = open('results/scenario2_B0.8_classical/' + filename)
        best_solution = json.load(ff)["solution"]

        start = filename.find('q')
        end = filename.find('B')

        print('File #{}: \tJSON \t{} \t{}'.format(
            file_num, filename[start:end], best_solution))

        portfolio_return = 0
        portfolio_risk = 0

        for i in range(N):
            portfolio_return += best_solution[i] * mu[tickers[i]]
            portfolio_risk += best_solution[i] * sigma[tickers[i]
                                                       ][tickers[i]] * sigma[tickers[i]][tickers[i]]

        portfolio_return /= N

        for i in range(N):
            for j in range(i+1, N):
                portfolio_risk += 2 * best_solution[i] * \
                    best_solution[j] * sigma[tickers[i]][tickers[j]]

        returns.append(portfolio_return)
        risks.append(portfolio_risk)
        labels.append(filename[start:end])
        if 'q1.00' in filename:
            objectives.append(-1)
        else:
            objectives.append(-1)
        file_num += 1

fig, ax = plt.subplots()

print(objectives)
print('Length:{}'.format(len(objectives)))
ax.scatter(risks, returns, c=objectives, marker='o', cmap='autumn', vmin=0, vmax=8)

ax.set(xlabel='Risk', ylabel='Return',
       title='Risk vs Return')
ax.grid()

# for i, label in enumerate(labels):
#     ax.annotate(label, (risks[i], returns[i]))

#plt.xlim([0, 3])
#plt.ylim([0, 0.04])

fig.savefig('images/markowitzN{}B{}P{}.png'.format(N, B, P))
plt.show()

fig, ax = plt.subplots()
#objectives.sort()
ax.scatter(list(range(len(objectives))), objectives, c=objectives, cmap='autumn', vmin=0, vmax=8)
val, idx = min((val, idx) for (idx, val) in enumerate(objectives))
print(f'{val},{idx},{solutions[idx]}')

#plt.ylim([-10, 2000])
#plt.ylim([-1.5, 1.5])
#plt.xlim([-10, 1010])
ax.set(xlabel='Index of solutions', ylabel='Objective Value',
       title='Value of solutions')
ax.grid()
plt.show()
