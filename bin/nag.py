#! /usr/bin/python3

import os
import pickle
import subprocess
import time

with open(os.path.join(os.getenv('HOME'), '.last_break.pickle'), 'rb') as f:
    last_break = pickle.load(f)

if time.time() > last_break + 1800:
    subprocess.run(['notify-send', '--urgency=critical', 'Time for a break!'])
