import os
import re

# TextAsset files rename
file_path = os.getcwd() + os.sep + 'input' + os.sep
file_list = os.listdir(os.path.split(file_path)[0])

for i in file_list:

    if re.match('.*(.lua.bytes)', i):

        new_name = i.replace('.lua.bytes', '.lua')

        os.renames(file_path + i, file_path + new_name)

        print(i , '===>', new_name)

print('TextAsset files renames complete')
