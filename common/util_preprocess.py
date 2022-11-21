#####
# This utility script finds duplciated entries in W_GT matrix to decide which frames were manually annotated.
# After finding the manual flags, this script writes them on a new pkl file.
# Author: Mosam Dabhi

import _pickle as cPickle
import numpy as np

for cams in range(6):
    with open("CAM_" + str(cams + 1) + ".pkl", "rb") as fid:
        data = cPickle.load(fid)

    ##### Deduplication and finding G.T. indices
    W = []
    S = []
    for idx in range(len(data)):
        W.append(data[idx]["W_GT"])
        S.append(data[idx]["S_GT"])
    W = np.asarray(W)
    S = np.asarray(S)

    data_ = []
    for idx in range(len(data)):
        d = {"W_GT": W[idx], "S_GT": S[idx]}
        data_.append(d)

    with open("CAM_" + str(cams + 1) + ".pkl", "wb") as fid:
        cPickle.dump(data_, fid)
