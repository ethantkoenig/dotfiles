import os.path
import pickle
import sys
import threading
import time


def get_total(filename):
    if not os.path.isfile(filename):
        with open(filename, 'w') as f:
            pickle.dump(0, f)
        return 0
    with open(filename, 'r') as f:
        return pickle.load(f)


def print_total(init_total, start):
    while True:
        time.sleep(1)
        total = init_total + int(time.time() - start)
        print(total)


def main(filename):
    total = get_total(filename)
    start = time.time()

    print_thread = threading.Thread(target=print_total, args=(total, start))
    print_thread.setDaemon(True)
    print_thread.start()

    raw_input()
    end = time.time()
    total += int(end - start)
    with open(filename, 'w') as f:
        pickle.dump(total, f)
    sys.exit(0)


if __name__ == '__main__':
    main(sys.argv[1])
