import os

def create_folder(folder):
    os.mkdir("C:/Users/PA061981/Desktop"+folder)

def create_sub_folder(subfol):
    os.mkdir("C:/Users/PA061981/Desktop/Tetingworld"+subfol)

def concating_username_passward(Val1,Val2):
    Val3 = (Val1+" "+Val2)
    return Val3