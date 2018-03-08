import os.path
import pickle
import subprocess
import sys
import time


def accrued(start):
  return int(0.4 * (time.time() - start))


def get_total(filename):
    if not os.path.isfile(filename):
        with open(filename, 'w') as f:
            pickle.dump(0, f)
        return 0
    with open(filename, 'r') as f:
        return pickle.load(f)


def notify(init_total, start):
  while True:
    total = init_total + accrued(start)
    subprocess.call(['notify-send', '--urgency=critical', str(total)])
    time.sleep(10)


def print_total(init_total, start):
    while True:
        time.sleep(1)
        total = init_total + accrued(start)
        print(total)


def main(filename):
    total = get_total(filename)
    start = time.time()

    try:
      notify(total, start)
    except:
      pass

    total += accrued(start)
    with open(filename, 'w') as f:
        pickle.dump(total, f)
    sys.exit(0)


if __name__ == '__main__':
    main(sys.argv[1])
