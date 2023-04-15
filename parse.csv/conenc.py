import csv
import os

enc = 'utf-8'

files = os.listdir(os.getcwd() + '\\db')

for i in range(len(files)):
    path = f'db/{files[i]}'
    output = f'output/{files[i][:-4]}'
    print(path, ' :: ', output + '_convert.csv')

    with open(path, 'r', encoding=enc, errors='ignore') as infile, open(output + '_convert.csv', 'w', errors='ignore', newline='') as outfile:
        inputs = csv.reader(infile)
        output = csv.writer(outfile)

        for index, row in enumerate(inputs):
            output.writerow(row)
