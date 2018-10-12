#! /usr/bin/python3

import os
import pickle
import random
import sys
import subprocess
import time

state_filename = os.path.join(os.getenv('HOME'), '.nag_state.pickle')

with open(state_filename, 'rb') as f:
    last_break, current_task = pickle.load(f)

if current_task is None:
    if time.time() < last_break + 1500:
        sys.exit(0)
    current_task = random.choice(['5-minute break', 'Hamstring stretch', 'Hand stretches'])
    with open(state_filename, 'wb') as f:
        pickle.dump((last_break, current_task), f)

subprocess.run(['notify-send', '--urgency=critical', current_task])
