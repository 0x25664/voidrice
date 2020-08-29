from tkinter import *
from tkinter import messagebox
import pickle

original = {'Illinois':'Aurora','Massachusetts':'Boston','Florida':'Orlando'}

pickled = pickle.dumps(original)
identical = pickle.loads(pickled) 

print('Original:',original,'\nPickedi:',pickled,'\nIdentical:',identical)
