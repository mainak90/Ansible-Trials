import argparse
import sys

parser = argparse.ArgumentParser()

parser.add_argument('nv', action="store", choices=('lab', 'itt', 'uat', 'prod'))
parser.add_argument('path', action="store")
try:
        args=parser.parse_args()
        uenv = args.nv
        fpath = args.path
except IOError as msg:
        parser.error(str(msg))

env = ('lab', "itt", "uat", "prod")
sgw = ("http://el3771.bc:4984/", "http://el3935.bc:4984/", "http://el3991.ebc.local:4984/", "http://el4206.ebc.local:4984/")

myfile = open(fpath, 'r')
fread = myfile.read()
if uenv == env[0]: 
	newtext = fread.replace('${syncGwNormal}', sgw[0])
elif uenv == env[1]:
	newtext = fread.replace('${syncGwNormal}', sgw[1])
elif uenv == env[2]:
	newtext = fread.replace('${syncGwNormal}', sgw[2])
elif uenv == env[3]:
	newtext = fread.replace('${syncGwNormal}', sgw[3])
else: 
	print "env not valid or placeholders not found in json"

newfile = open(fpath, 'w')
newfile.write(newtext)
print "Replaced with", uenv ,"values"

