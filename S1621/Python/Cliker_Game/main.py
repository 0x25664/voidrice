from tkinter import *
import sys


bomb = 100
score = 0

press_return = True

def start(event):
    global press_return
    global bomb
    global score

    if not press_return:
        pass
    else:
        bomb = 100
        score = 0
        label.config(text = '')
        update_bomb()
        update_display()
        press_return = False

def update_display():
    global bomb
    global score

    if bomb > 50:
       bomb_image.config(image = normal_photo)
    elif 0 < bomb <=50:
        bomb_image.config(image = no_photo)
    else:
        bomb_image.config(image = bang_photo)
    fuse_label.config(text = 'Fuse: '+ str(bomb))
    score_label.config(text = 'Score: '+ str(score))
    fuse_label.after(100, update_display)

def update_bomb():
    global bomb
    global score
    bomb -= 5

    if is_alive():
        fuse_label.after(400, update_bomb)

def click():
    global score

    if is_alive():
        score += 1
    if score >= 20:
        exit()

def is_alive():
    global bomb
    global press_return

    if bomb <= 0:
        label.config(text = 'Bang! Bang! Bang!')
        press_return = True
        return False
    else:
        return True

#window
root = Tk()
#enter button binded to start function
root.bind('<Return>', start)

#labels
label = Label(root, text = 'Press [enter] to start the game', font = ('Comic Sans MS', 12))
fuse_label = Label(root, text = 'Fuse: '+ str(bomb), font=('Comic Sans MS',14))
score_label = Label(root, text = 'Score: '+ str(score), font = ('Comic sans MS', 14))

#bomb photos
no_photo = PhotoImage(file = 'bomb_no.gif')
normal_photo = PhotoImage(file = 'bomb_normal.gif')
bang_photo = PhotoImage(file = 'pow.gif')
bomb_image = Label(root, image = normal_photo)

#button
click_button = Button(root, text = 'Click me', bg = '#000000', fg = '#ffffff', width = 15, command = click)

#placement
label.pack()
fuse_label.pack()
score_label.pack()
bomb_image.pack()
click_button.pack()

root.mainloop()
