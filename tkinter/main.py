# THIS IS PAGE 1
from tkinter import *
from customtkinter import *
from PIL import Image

grey = "#363737"
light_grey = "#262727"
dark_grey = "#0b0b0b"

install_window = CTk(fg_color=grey)
install_window.title ("Meomint Installer")
install_window.geometry("900x600+300+300")
install_window.resizable(True,True)
install_window.maxsize(height=1080, width=1920)
install_window.minsize(height=480,width=640)

logo = CTkImage(dark_image=Image.open("../.meta/logo.png"),size=(360,360))
logo_label = CTkLabel(install_window, image=logo, text="")
logo_label.pack()

def goto_installer():
    print("HELLO MEOMINT")

install_btn = CTkButton(install_window, text="Install", command=goto_installer, text_color="white", fg_color=light_grey,corner_radius=6, font=("Consolas",30))
install_btn.pack(expand=True, padx=10, pady=50)

bottom_label = CTkLabel(install_window, text="meomint 2025, Copyrighted", text_color="white",font=("Consolas",10))
bottom_label.pack(side=BOTTOM)

install_window.mainloop()