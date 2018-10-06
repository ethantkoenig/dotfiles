#! /usr/bin/python3

import os
import pickle
import time

with open(os.path.join(os.getenv('HOME'), '.last_break.pickle'), 'wb') as f:
    pickle.dump(time.time(), f)
