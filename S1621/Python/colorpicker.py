from tkinter import *

def red():
  label1.config(text='#ff0000')
  entry1.delete(0, END)
  entry1.insert(0, 'Red')

def orange():
 label1.config(text='#ffa500')
 entry1.delete(0, END)
 entry1.insert(0, 'Orange')

def yellow():
 label1.config(text='#ffff00')
 entry1.delete(0, END)
 entry1.insert(0, 'Yellow')

def green():
 label1.config(text='#008000')
 entry1.delete(0, END)
 entry1.insert(0, 'Green')

def blue():
 label1.config(text='#0000ff')
 entry1.delete(0, END)
 entry1.insert(0, 'Blue')

def purple():
 label1.config(text='#800080')
 entry1.delete(0, END)
 entry1.insert(0, 'Purple')

root = Tk()
root.geometry('200x210')
#Label
label1 = Label(root)

#Buttons
ButtonRed = Button(root,bg='red',command=red,text = 'Red',fg = 'white')

ButtonOrange = Button(root,bg='orange',command=orange,text = 'Orange',fg = 'white')

ButtonYellow = Button(root,bg='yellow',command=yellow,text = 'Yellow',fg = 'white')

ButtonGreen = Button(root,bg='green',command=green,text = 'Green',fg = 'white')

ButtonBlue = Button(root,bg='blue',command=blue,text = 'Blue',fg = 'white')

ButtonPurple = Button(root,bg='purple',command=purple,text = 'Purple',fg = 'white')

#Entry
entry1 = Entry(root,width='30')

#Button Placements
label1.pack()
entry1.pack()
ButtonRed.pack(fill='x')
ButtonOrange.pack(fill='x')
ButtonYellow.pack(fill='x')
ButtonGreen.pack(fill='x')
ButtonBlue.pack(fill='x')
ButtonPurple.pack(fill='x')

root.mainloop()
