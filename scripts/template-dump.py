#!/usr/bin/python

import stringtemplate3, yaml
from glob import glob
from sys import argv, exit
from os.path import basename, splitext, join
from os import listdir
import skeleton

if len(argv) != 3:
  print "USAGE: template-dump.py template-directory output-directory"
  exit(1)

OUTPUT_DIRECTORY = argv.pop()
TEMPLATE_DIRECTORY = argv.pop()
TEMPLATES = ['Ruby', 'AST']
GROUP_LOADER = stringtemplate3.PathGroupLoader(TEMPLATE_DIRECTORY)
GROUPS = []

def load_group(name, *args):
  print("loading %s..." % name)
  group = GROUP_LOADER.loadGroup(name, *args)
  GROUPS.append(group)
  return group

ruby = load_group('Ruby')
dbg  = load_group('Dbg', ruby)
ast  = load_group('AST', ruby)
ast_tree = load_group('ASTTreeParser', ast)
ast_parser = load_group('ASTParser', ast)
ast_dbg = load_group('ASTDbg', ast)

print "converting template data..."
data = skeleton.skelify(GROUPS)
out_path = join(OUTPUT_DIRECTORY, 'template-groups.yaml')
out_file = file(out_path, 'w')
print "dumping all template data to %s" % out_path
yaml.dump(data, out_file)
out_file.close()