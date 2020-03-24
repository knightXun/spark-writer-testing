import os 
import random 


with open("data.json", 'a+') as f:
    for i in range(1000000):
        s = '{"source":"' + str(random.randint(0,10000000)) + '","target":"' + str(random.randint(0,10000000)) +'","likeness":' + str(random.random() * 100) + '}'
        f.write(s + '\n')

