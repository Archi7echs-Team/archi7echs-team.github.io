import os
import sys

with open("glossario_template.html", "r") as file:
    start = file.read()

INIT_PATH = "documents"
FILENAME = "glossario.typ"
FILE_TEMPLATE = '<p><strong>{word}:</strong> {meaning}</p>\n'

'''

== A
 - Prova : ciao
 - Prova1 : ciao ciao
    Title split desc


se = --> while finchè != = --> read riga split [:] --> primo title secondo text 
'''


def main():
    '''
    main function
    '''
    global INIT_PATH, FILENAME
    if len(sys.argv) > 1:
        print("Changing directory to " + sys.argv[1])
        # add error handling to chdir

        INIT_PATH = sys.argv[1]
    else:
        print("No directory specified, default is 'documents'")

    path = find_file(INIT_PATH, FILENAME)

    nested_dict = readfile(path)
    '''
    for letter, words in nested_dict.items():
        print(f"= {letter}")
        for word, meaning in words.items():
            print(f"  - {word}")
            print(f"    {meaning}")
    '''

    final = replaceHTML(start, nested_dict)
    #print(final)
    with open(os.path.join("glossario.html"), "w") as file:
        file.write(final)
        print("File written to " + os.path.join("glossario.html"))


def readfile(path):
    glossary = {}
    current_letter = None
    current_word = None

    with open(path, 'r', encoding='utf-8') as file:
        for line in file:
            line = line.strip() 
            # = Lettera
            if line.startswith('=') and not line.startswith("= Introduzione"):
                current_letter = line.split('=')[-1].strip()
                glossary[current_letter] = {}
            # '-' Parola
            elif line.startswith('-'):
                current_word = line.split('-')[-1].strip()
                glossary[current_letter][current_word] = []
            # Se non è lettera ne parola e non è una funzione è il significato e viene aggiunto al dizionario
            elif not line.startswith('#') and current_word is not None:
                if line == "":
                    continue
                else:
                    glossary[current_letter][current_word].append(line)

    # merge parola e significato
    for letter in glossary:
        for word in glossary[letter]:
            glossary[letter][word] = ' '.join(glossary[letter][word])

    return glossary

        
def replaceHTML(html, generated):
    for letter, words in generated.items():
        output = ""
        for word, meaning in words.items():
            output += FILE_TEMPLATE.format(word = word, meaning = meaning)
        placeholder = f'{{{{CONTENT {letter}}}}}'
        #print(placeholder)
        html = html.replace(placeholder , output)
    return html



def find_file(directory, filename):
    for root, dirs, files in os.walk(directory):
        #print(root, dirs, files)
        if filename in files:  
            return os.path.join(root, filename)  

    return None

if __name__ == "__main__":
    main()

