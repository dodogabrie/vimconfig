import os
import tempfile
import subprocess
from config import config
from Xlib import X
import pyperclip

f = tempfile.NamedTemporaryFile(mode='w+', delete=False, suffix='.tex')

f.write('$$')
f.close()

config['open_editor'](f.name)

latex = ""
with open(f.name, 'r') as g:
    latex = g.read().strip()

os.remove(f.name)

#if latex != '$$':
#     m = tempfile.NamedTemporaryFile(mode='w+', delete=False)
#     m.write(config['latex_document'](latex))
#     m.close()
latex = latex.replace('$','')
pyperclip.copy(latex)
spam = pyperclip.paste()
