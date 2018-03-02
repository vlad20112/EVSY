from tkinter import *
class interface:
    def __init__(main,self):
        self.button1 = Button(main,text = "djfs")
        self.button1.grid(row = 1, column = 0)
        self.label1 = Label(main,text = "This is text")
        self.label1.grid(row = 0, column = 0)


root = Tk()
q = interface(root) 
root.mainloop()           