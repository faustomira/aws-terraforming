import pandas as pd
import os

dict_populate = {
    'Name': [
        'Mick',
        'Ozzy',
        'John'
    ],
    'LastName': [
        'Jagger',
        'Osbourne',
        'Lennon'
    ]
}
def mainExec(event=None, context=None):
    print(f"Env. Variable Value = {os.getenv('SOME_ENV_VARIABLE')}")
    df = pd.DataFrame(dict_populate)
    print(df)

if __name__ == '__main__':
    mainExec()