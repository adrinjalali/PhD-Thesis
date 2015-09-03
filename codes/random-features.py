import numpy as np
import scipy.stats

features = 10000
samples = 50
X = np.random.randn(samples,features)

y = [0] * int(samples/2) + [1] * int(samples/2)

corr_pvalue = np.array([scipy.stats.pearsonr(X[:,i], y) for i in range(X.shape[1])])

corr_pvalue[corr_pvalue[:,1] < (0.05 / features), :]
