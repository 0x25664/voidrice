import os
from PIL import Image
from PIL import ImageTk

PATH = os.path.dirname(os.path.dirname(__file__))

def load_image(name):
    location = os.path.join(PATH, 'resources', 'icons', name)
    image = Image.open(location)
    image = image.resize((20, 20), Image.ANTIALIAS)
    return ImageTk.PhotoImage(image)