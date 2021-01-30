import tar_gz
import zip

# tar_gz.compress_tar_gz('compressed.tar.gz', ['test.xlsx'])
# tar_gz.decompress_tar_gz('compressed.tar.gz', 'extracted')

# zip.decompress_zip('test.zip')
# zip.compress_zip('vid.mp4', 'cmprssd_vid.zip')

try:
    import tkinter as tk
except:
    import Tkinter as tk

from tkinter import *
from tkinter import messagebox, filedialog

HEIGHT, WIDTH=550, 550
BACKGROUND_COLOR='#65778D'
TXT_COLOR='#FDFDFB'
BTN_COLOR='#2A3E63'

root=Tk()
root.title('Compressor')
root.geometry('%dx%d' % (WIDTH, HEIGHT))
root.resizable(False, False)
root.configure(bg='#65778D')

def browseFiles():
    # this variable will be pipelined into the compress function etc.
    global filename
    filename=filedialog.askopenfilename(initialdir='/',
        title='Select a File',
        filetypes=(('Text files',
            '*.txt*'),
            ('all files',
            '*.*')))
    label_filename.configure(text=f'{filename}')

    if 'filename' in globals():
        print(f'Selected file: {filename}')

label_filename=Label(root,
                     bg=BACKGROUND_COLOR,
                     fg=TXT_COLOR,
                     text='No file chosen')
label_filename.place(rely=0.5, relx=0.5, anchor=CENTER)

button_explore=Button(root,
    bg=BTN_COLOR,
    fg=TXT_COLOR,
    width=7,
    text='Choose File',
    command=browseFiles)
button_explore.place(y=490, x=465)

button_exit=Button(root,
    bg=BTN_COLOR,
    fg=TXT_COLOR,
    width=7,
    text='Exit',
    command=exit)
button_exit.place(y=520, x=465)

root.mainloop()
