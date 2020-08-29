from tkinter import *

root = Tk()
root.geometry('500x400')

#Buttons and labels
ButtonRed = Button(root,bg='#ff0000',width = 30)
colorlabelred = Label(root,text = '#ff0000')
colornamered = Label(root,text ='Red')

ButtonOrange = Button(root,bg='#ffa500',width = 30)
colorlabelorange = Label(root,text = '#ffa500')
colornameorange = Label(root,text ='Orange')

ButtonYellow = Button(root,bg='#ffff00',width = 30)
colorlabelyellow = Label(root,text = '#ffff00')
colornameyellow = Label(root,text ='Yellow')

ButtonGreen = Button(root,bg='#008000',width = 30)
colorlabelgreen = Label(root,text = '#008000')
colornamegreen = Label(root,text ='Green')

ButtonBlue = Button(root,bg='#0000ff',width = 30)
colorlabelblue = Label(root,text = '#0000ff')
colornameblue = Label(root,text ='Blue')

ButtonPurple = Button(root,bg='#800080',width = 30)
colorlabelpurple = Label(root,text = '#800080')
colornamepurple = Label(root,text ='Purple')

ButtonLightCoral = Button(root,bg='#f08080',width = 30)
colorlabellightcoral = Label(root,text = '#f08080')
colornamelightcoral = Label(root,text ='Light Coral')

ButtonSeaGreen = Button(root,bg ='#54ff9f',width = 30)
colorlabelseagreen = Label(root,text ='#54ff9f')
colornameseagreen = Label(root,text ='Sea Green')

ButtonTurquoise = Button(root,bg = '#00e5ee',width = 30)
colorlabelturquoise = Label(root,text = '#00e5ee')
colornameturquoise = Label(root,text ='Turquoise')

colorlabelgoldenrod = Label(root,text = '#daa520')
ButtonGoldenRod = Button(root,bg = '#daa520',width = 30)
colornamegoldenrod = Label(root,text ='Golden Rod')

#Placements with grid 
colorlabelred.grid(row = 0,column = 2)
ButtonRed.grid(row = 0,column = 1)
colornamered.grid(row = 0,column = 0)

ButtonOrange.grid(row = 1,column = 1)
colorlabelorange.grid(row = 1,column = 2)
colornameorange.grid(row = 1,column = 0)


ButtonYellow.grid(row = 2,column = 1)
colorlabelyellow.grid(row=2,column = 2)
colornameyellow.grid(row = 2,column = 0)

ButtonGreen.grid(row = 3,column = 1)
colorlabelgreen.grid(row = 3,column = 2)
colornamegreen.grid(row = 3,column = 0)

ButtonBlue.grid(row = 4,column = 1)
colorlabelblue.grid(row = 4, column = 2)
colornameblue.grid(row = 4,column = 0)

ButtonPurple.grid(row = 5,column = 1)
colorlabelpurple.grid(row =5,column = 2)
colornamepurple.grid(row = 5,column = 0)

ButtonLightCoral.grid(row = 6,column = 1)
colorlabellightcoral.grid(row = 6, column = 2)
colornamelightcoral.grid(row = 6,column = 0)

ButtonSeaGreen.grid(row = 7,column = 1)
colorlabelseagreen.grid(row = 7,column = 2)
colornameseagreen.grid(row = 7,column = 0)

ButtonTurquoise.grid(row = 8,column = 1)
colorlabelturquoise.grid(row = 8,column = 2)
colornameturquoise.grid(row = 8,column = 0)

ButtonGoldenRod.grid(row = 9,column = 1)
colorlabelgoldenrod.grid(row = 9,column = 2)
colornamegoldenrod.grid(row = 9,column = 0)

root.mainloop()
