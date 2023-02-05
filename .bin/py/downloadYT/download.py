import sys
from pathlib import Path
import os
import pytube
import re
import itertools
import threading
import time

link = sys.argv[1]
outputDir = str(Path.home() / "Downloads")
if len(sys.argv) > 2:
    outputDir = os.path.abspath(sys.argv[2]) 
video = pytube.YouTube(str(link))

availableResolutions = []
for stream in video.streams.filter(progressive=True):
    availableResolutions.append(stream.resolution)

print("Select resolution: ")
for res in availableResolutions:
    print(res)

resolution = None
while resolution not in availableResolutions:
    resolution = re.findall(r'\d+', input())[0] + 'p'

done = False
def animate(message):
    for c in itertools.cycle(['|', '/', '-', '\\']):
        if done:
            break
        sys.stdout.write('\r' + message + c)
        sys.stdout.flush()
        time.sleep(0.1)
    sys.stdout.write('\n\rDone!\n')

t = threading.Thread(target = animate, args = (f"Downloading in {resolution}: ", ))
t.start()

video.streams.get_by_resolution(resolution).download(output_path = outputDir)

done = True
