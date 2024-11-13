import os
import sys

with open("template.html", "r") as file:
    start = file.read()

INIT_PATH = "documents"
convert = lambda x: "{{" + str(x).upper() + "}}"

FILE_TEMPLATE = '<div class="file-item"><a href="{url}" target="_blank">{name}</a></div>'
FOLDER_WRAPPER = '<h3 class="category">{name}</h3><div class="indent">{content}</div>'


'''

Run this script in the same folder as the 'documents' (or specified) folder and the website files.

'''


def main():
    '''
    main function
    '''
    global INIT_PATH
    if len(sys.argv) > 1:
        print("Changing directory to " + sys.argv[1])
        # add error handling to chdir

        INIT_PATH = sys.argv[1]
    else:
        print("No directory specified, default is 'documents'")

    subdirs, _ = dirlister(INIT_PATH)

    generated = {dir: generateHTML(os.path.join(INIT_PATH, dir)) for dir in subdirs}

    keys = map(lambda x: str(x).upper(), list(generated.keys()))

    expected = ["CANDIDATURA", "RTB", "PB"]

    for k in expected:
        if k not in keys:
            generated[k] = "Non ci sono ancora documenti in questa categoria"

    final = replaceHTML(start, generated)

    with open(os.path.join("index.html"), "w") as file:
        file.write(final)
        print("File written to " + os.path.join("index.html"))


        
def replaceHTML(html, generated):
    for key, value in generated.items():
        html = html.replace(convert(key), value)
    return html



def dirlister(path):
    temp = os.listdir(path)
    files = []
    directories = []
    for f in temp:
        if os.path.isfile(os.path.join(path, f)):
            files.append(f)
        else:
            directories.append(f)
    return sorted(directories), sorted(files)


def generateHTML(path):
    output = ""
    dirnames, filenames = dirlister(path)
    for file in filenames:
        output += FILE_TEMPLATE.format(url=os.path.join(path, file), name=file)
    for dir in dirnames:
        output += FOLDER_WRAPPER.format(name=dir, content=generateHTML(os.path.join(path, dir)))
    return output

if __name__ == "__main__":
    main()

