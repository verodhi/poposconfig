import subprocess
import os
import time
import random
import string

def randomString(stringLength=10):
    """Generate a random string of fixed length """
    letters = string.ascii_lowercase
    return ''.join(random.choice(letters) for i in range(stringLength))

files = []
command = "/bin/touch"
processes = set()
max_processes = 100

i = 1;
while i < 9999999999999999999999999999999999:
    rand = randomString(5);
    print("Adding " + str(i) + "th " + rand);
    files.append(rand);
    i += 1;


for name in files:
    processes.add(subprocess.Popen([command, name]))
    if len(processes) >= max_processes:
        os.wait()
        processes.difference_update([
            p for p in processes if p.poll() is not None])