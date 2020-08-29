from tkinter import *
    
root = Tk()
root.geometry('200x80')

def insert():
    entry1.insert(0, 'Hello')
def delete():
    entry1.delete(0, END)
 

#Button Insert
button1 = Button(text='Click me', bg="white",fg = 'Black',width='10', height = '1')
button1.config(command = insert)

#Button Delete
button2 = Button(text='Delete', bg="white",fg = 'Black',width='10', height = '1')
button2.config(command = delete)

#Label
label1 = Label(root, text='Say Hello', font=('Arial',16,'bold'))
label1.config(bd = 0)

#Entry
entry1 = Entry(root, width='30')

button1.pack()
button2.pack()
entry1.pack()
label1.pack()

root.mainloop()
