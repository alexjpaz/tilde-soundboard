import os, sys
import yaml
import argparse

package_directory = os.path.dirname(os.path.abspath(__file__))

os.chdir(package_directory);

parser = argparse.ArgumentParser(description='Play some sounds')
parser.add_argument('--key', help='sound to play')
parser.add_argument('--list', help='lists sounds', action="store_true")

args = parser.parse_args()

sounds = {}

with open("./sounds.yaml", 'r') as stream:
  sounds = yaml.load(stream)

if(args.list):

  for s in sounds.keys():
    print "%s - %s" % (s, sounds[s]['title'])

if(args.key):
  s = sounds[args.key]
  print s['title']
  os.system('mplayer ' + s['url'] + '>> /dev/null')

