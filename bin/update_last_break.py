#! /usr/bin/python3

import os
import pickle
import time

state_filename = os.path.join(os.getenv('HOME'), '.nag_state.pickle')

with open(state_filename, 'wb') as f:
    pickle.dump((time.time(), None), f)
