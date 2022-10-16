#************ MONGO DB ************#
mongoimport --db dbName --collection collectionName --file fileName.json


mongoimport --db BlogFoto --collection "Provincia" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoAlbum.json"
mongoimport --db BlogFoto --collection "Citta" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoCitta.json"
mongoimport --db BlogFoto --collection "Luogo" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoLuogo.json"
mongoimport --db BlogFoto --collection "Studio" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoStudio.json"
mongoimport --db BlogFoto --collection "Risiede" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoRisiede.json"
mongoimport --db BlogFoto --collection "Utente" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoUtente.json"
mongoimport --db BlogFoto --collection "Album" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoAlbum.json"
mongoimport --db BlogFoto --collection "Categoria" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoCategoria.json"
mongoimport --db BlogFoto --collection "Marca" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoMarca.json"
mongoimport --db BlogFoto --collection "Obiettivo" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoObiettivo.json"
mongoimport --db BlogFoto --collection "Macchina" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoMacchina.json"
mongoimport --db BlogFoto --collection "Compatta" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoCompatta.json"
mongoimport --db BlogFoto --collection "Reflex" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoReflex.json"
mongoimport --db BlogFoto --collection "Monta" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoMonta.json"
mongoimport --db BlogFoto --collection "Fotografia" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoFotografia.json"
mongoimport --db BlogFoto --collection "Voto" --drop --type json --file "/Users/donatostanco/Documents/MongoInsert/MongoVoto.json"



import string
import random

def makeString(lenght = 8):
    letters = string.ascii_letters
    return "".join([random.choice(letters) for c in range(lenght)])

with open("MongoProvincia.json",'a',encoding = 'utf-8') as f:
    for i in range (110):
        f.write("{\"_id\":" + str(i) + ", \"Nome\":\"" + makeString(random.randint(5,50)) + "\", \"Sigla\":\"" + makeString(2) + "\"} \n")

with open("MongoCitta.json",'a',encoding = 'utf-8') as f:
    for i in range (8000):
        f.write("{\"_id\":" + str(i) + ", \"Nome\":\""+ makeString(random.randint(5,50)) + "\", \"Provincia\":\"" + str(random.randint(0,110)) + "\"} \n")

with open("MongoLuogo.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Via\":\""+ makeString(random.randint(5,50)) + "\", \"Citta\":\"" + str(random.randint(0,8000)) + "\"} \n")

with open("MongoStudio.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Nome\":\""+ makeString(random.randint(5,50)) + "\"} \n")

with open("MongoRisiede.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id_Studio\":" + str(random.randint(0,50000)) + ", \"_id_Luogo\":\"" + str(random.randint(0,100000)) +"\", \"NumeroCivico\":" + str(random.randint(0,300)) + "} \n")

with open("MongoUtente.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Nome\":\"" + makeString(random.randint(5,50)) + "\", \"Cognome\":\"" + makeString(random.randint(5,50)) +"\", \"Data\":\"" + str(random.randint(1980,2018)) + "-" + str(random.randint(1,12)) + "-" + str(random.randint(1,28)) + "\", \"Email\":\"" + makeString(random.randint(5,50)) + "\", \"Cellulare\":\"" + str(random.randint(1,9))+ str(random.randint(1,9))+ str(random.randint(1,9))+ str(random.randint(1,9))+ str(random.randint(1,9))+ str(random.randint(1,9))+ str(random.randint(1,9))+ str(random.randint(1,9))+ str(random.randint(1,9)) + "\", \"_id_Studio\":\"" + str(random.randint(0,50000)) + "\"}")

with open("MongoAlbum.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"NomeAlbum\":\""+ makeString(random.randint(5,50)) + "\", \"_id_Utente\":" + str(random.randint(0,100000)) + ", \"Data\":\"" +  str(random.randint(1980,2018)) + "-" + str(random.randint(1,12)) + "-" + str(random.randint(1,28)) +"\"}")

with open("MongoCategoria.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Nome\":\""+ makeString(random.randint(5,50)) + "\", \"Descrizione\":\"" + makeString(random.randint(5,50)) + "\"}")

with open("MongoMarca.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Nome\":\""+ makeString(random.randint(5,50)) + "\", \"Stato\": \""+ makeString(random.randint(5,50)) + "\"} \n")

with open("MongoMacchina.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Modello\":\""+ makeString(random.randint(5,50)) + "\", \"Sensore\":" + str(random.randint(0,100000)) + ", \"Peso\":" + str(random.randint(0,78)) + ", \"MaxISO\":" + str(random.randint(0,500)) + ", \"_id_Marca\":" + str(random.randint(0,8000)) + "}\n")

with open("MongoObiettivo.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Modello\":\""+ makeString(random.randint(5,50)) + "\", \"OIS\":" + str(random.randint(0,100000)) + ", \"AF\":" + str(random.randint(0,1)) + ", \"Zoom\":" + str(random.randint(0,1)) + ", \"_id_Marca\":" + str(random.randint(0,100)) + "}\n")

with open("MongoCompatta.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id_Macchina\":" + str(random.randint(0,100000)) + ", \"_id_Obiettivo\":" + str(random.randint(0,100000)) + ", \"ZoomDigitale\":" + str(random.randint(0,1)) + ", \"StabilizzazioneDigitale\":" + str(random.randint(0,1)) + "}\n")

with open("MongoReflex.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id_Macchina\":" + str(random.randint(0,100000)) + ", \"MotoreAF\":" + str(random.randint(0,1)) + "}\n")

with open("MongoMonta.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id_Macchina\":" + str(random.randint(0,100000)) + ", \"_id_Obiettivo\":" + str(random.randint(0,100000)) + ", \"Attacco\":\"" + makeString(random.randint(2,5)) + "\"}\n")

with open("MongoFotografia.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
        f.write("{\"_id\":" + str(i) + ", \"Descrizione\":\"" + makeString(random.randint(5,140)) + "\", \"Data\":\"" + str(random.randint(1980,2018)) + "-" + str(random.randint(1,12)) + "-" + str(random.randint(1,28)) + "\", \"_id_Album\":"+ str(random.randint(0,100000)) +", \"_id_Categoria\":"+ str(random.randint(0,100000)) +", \"_id_Luogo\":"+ str(random.randint(0,100000)) +", \"_id_Macchina\":"+ str(random.randint(0,100000)) +", \"_id_Obiettivo\":"+str(random.randint(0,100000)) + ", \"LunghezzaFocale\":"+ str(round(random.uniform(1,3), 1)) +", \"Angolo\":"+ str(random.randint(2,220)) +", \"Diaframma\":"+ str(round(random.uniform(1,3), 1)) +", \"Esposizione\":"+ str(random.randint(-1000,30)) +", \"ISO\":"+str(random.randint(100,8000)) +", \"Risoluzione\":"+ str(random.randint(360,4000)) +"}")

with open("MongoVoto.json",'a',encoding = 'utf-8') as f:
    for i in range (100000):
            f.write("{\"_id\":" + str(i) + ", \"_id_Utente\":" + str(random.randint(0,100000)) + ", \"_id_Foto\":" + str(random.randint(0,100000)) + ", \"Voto\":" + str(random.randint(0,10)) + ", \"Descrizione\":\"" + makeString(random.randint(10,140)) + "\"}")





#*************** COLLECTION ************#

db.Provincia.insert([
                            {"_id":0, "Nome":"xRYKpLYLusIXtRWbHqNhGeMZfKTtMewLxLeudSAy", "Sigla":"ml"},
                            {"_id":1, "Nome":"nJKSYwjcHofEQflTLbySFEoylwyVfJTSHLF", "Sigla":"SK"},
                            {"_id":2, "Nome":"MihtzuNkzfJwphnSjgJOWVZEHVPwKPdgwPMrTEEgcaAd", "Sigla":"WC"},
                            {"_id":3, "Nome":"aZLqPwUjPGGPKSBbunlyogE", "Sigla":"MI"}
])

db.Citta.insert([
                            {"_id":0, "Nome":"oxWgWyuIDqvmjp", "Provincia":"1"},
                            {"_id":1, "Nome":"MSITnQsRxuJuRLnjoPzqGhOnnfGaVsDiRg", "Provincia":"1"},
                            {"_id":2, "Nome":"rqjcCHUnckauPQdIIsfJ", "Provincia":"2"},
                            {"_id":3, "Nome":"ybIgZzGoKPgPYffFMpkeCPWIjktmWkSAUjRnh", "Provincia":"3"},
                            {"_id":4, "Nome":"ubAUNgSsAMBsESRBfdTHGLUcxybrKmZcLqfjIgqamlfSDMgNI", "Provincia":"3"},
])

db.Luogo.insert([
                            {"_id":0, "Via":"lOLypaqbPhSwXlqbPiRGWDqCfDcDhqrpQtvehioxwX", "Citta":"1"},
                            {"_id":1, "Via":"upWffOG", "Citta":"1"},
                            {"_id":2, "Via":"LtnoecopObyEXucUgNCBBioXjwGnOMFxqQtMffv", "Citta":"2"},
                            {"_id":3, "Via":"BQsypakbUKRHBsatkBzkyIfUUukzPZhwLQyKQqtIBSLLh", "Citta":"2"},
                            {"_id":4, "Via":"xKWTYHhXuwvxVXEePLYhZRM", "Citta":"3"}
])

db.Studio.insert([
                            {"_id":0, "Nome":"GvZVViazwchqpIGbqLWVlUSN"},
                            {"_id":1, "Nome":"IwMySOMmtQjOuhqNGlFpxrYJRJejpczVeWONVy"},
                            {"_id":2, "Nome":"JNkGtLvlTMVmqJGYDQeE"},
                            {"_id":3, "Nome":"JObHpFOXqLjoGZVmfrOuqGhKHeInlNvwEvJGYWEL"},
                            {"_id":4, "Nome":"vloITwxCOWSdnmoc"}
])

db.Risiede.insert([
                            {"_id_Studio":1, "_id_Luogo":"1", "NumeroCivico":141},
                            {"_id_Studio":2, "_id_Luogo":"1", "NumeroCivico":204},
                            {"_id_Studio":0, "_id_Luogo":"2", "NumeroCivico":46},
                            {"_id_Studio":3, "_id_Luogo":"3", "NumeroCivico":194},
                            {"_id_Studio":4, "_id_Luogo":"4", "NumeroCivico":202}
])

db.Utente.insert([
                            {"_id":0, "Nome":"xXIpTiaAVZMksyOUerR", "Cognome":"ZhNADmkaxYujGrnLhhGpQ", "Data":"2018-11-24", "Email":"mKlZPXeZyOQsOdQCQJPvRbAxmZgyhLh", "Cellulare":"473981623", "_id_Studio":"0"},
                            {"_id":1, "Nome":"IyroSglaNQzGanbwXWcodfIFAiSdtqfEquholjlXAGxznZG", "Cognome":"xKGJxSQaPWbJvPZOcvuvBimkN", "Data":"2005-6-2", "Email":"VgDIOSjMrEkgFpYqeZJPTpkEFXuvWMEmyLgpoDlOghMRXFITbR", "Cellulare":"658131376", "_id_Studio":"0"},
                            {"_id":2, "Nome":"qJzPZKJlXZWhdVIVgHcAgLAWSyEschSMbxDYBllmeHtP", "Cognome":"KUTJlgdIUdPzXZMpIfQVtHwgBZsEjnUSSVTqq", "Data":"2008-4-26", "Email":"RsFWUfQpxIyjFiSOkdfdNTPwc", "Cellulare":"568183292", "_id_Studio":"1"},
                            {"_id":3, "Nome":"mPoTrImA", "Cognome":"RzAdJKrKJiMHdm", "Data":"1990-5-10", "Email":"ftRLawBuJztSZe", "Cellulare":"165817483", "_id_Studio":"3"},
                            {"_id":4, "Nome":"hAIlMKzPKlBvDgYPMUzumkiwKTWogs", "Cognome":"hyLubaXNsSBDUMYEGwPedfQIs", "Data":"2013-11-26", "Email":"CyzjnTVNkSavEpdengYFXClfALAIeVukKCygYmmhNsz", "Cellulare":"686347699", "_id_Studio":"1"}
])

db.Album.insert([
                            {"_id":0, "NomeAlbum":"JBVqTneJie", "_id_Utente":1, "Data":"2000-9-11"},
                            {"_id":1, "NomeAlbum":"rBOwTgYiTRLZFgtSiRxSDFtzeJqiDiGaww", "_id_Utente":2, "Data":"1986-1-9"},
                            {"_id":2, "NomeAlbum":"dYhTnPeetltUutYxGRxsObgwLtbhXNKwLVonSvLVrGk", "_id_Utente":0, "Data":"2008-1-2"},
                            {"_id":3, "NomeAlbum":"yzJgZmnvfIcjFVKfKcEZohubyiKVIjRYbfdiuMKbhme", "_id_Utente":3, "Data":"1984-2-24"},
                            {"_id":4, "NomeAlbum":"ibOOkyNVGAWnUnQNMvzdZtZudzsVMMAiCJ", "_id_Utente":1, "Data":"1993-1-14"}
])

db.Categoria.insert([
                            {"_id":0, "Nome":"kHVLGeFSmrRpKdcoSzQFRcxqJACMGK", "Descrizione":"uVLLSautsrwz"},
                            {"_id":1, "Nome":"wzdMManMDqehwbANpsmjKr", "Descrizione":"OWxohgIbDADrZVtpShtdcaQbpWpRoSJwQhHqFZwxJVted"},
                            {"_id":2, "Nome":"KwYLMQYtk", "Descrizione":"pBGaMFksQcYEknyR"},
                            {"_id":3, "Nome":"iSlLijJTQbZESpbepFpAouxMqnkdZ", "Descrizione":"NnJnaYiksbkKRQzbOShXBHmzaPGdrUMKwXZdMejeuYrb"},
                            {"_id":4, "Nome":"kkGekM", "Descrizione":"PgoCOdZWUhREvAoRKNHMwkg"}
])

db.Marca.insert([
                            {"_id":0, "Nome":"bkauLXwmXtktdOsELQJ", "Stato": "nvQXMeWIS"},
                            {"_id":1, "Nome":"kHsqqBtjjSHHkFUEDjMWKvlPFhkzobhlssbHmUrEjPycD", "Stato": "TtkbPsHCCEdAnVcTcrqooZYyPbmlPnoHHsAvrmNwij"},
                            {"_id":2, "Nome":"RjMUlmDawROqdYBSjdrYkqsUCespwmVZ", "Stato": "kVcKBJDYbdqmZsclMlJLIdVjj"},
                            {"_id":3, "Nome":"dCMEGeQAsDtDGbKZoiWbOHhltXVrdkqdfbmZDbZY", "Stato": "lLPdoQgBVDSqecXjasJYHrmMDZiaqBQuvkdDAvToTwGuy"},
                            {"_id":4, "Nome":"janohqfOyqGkRAqeQfaZWDCqEbpGTskUIHCoP", "Stato": "cwOwubvACTbzTZiTeGSqTobGPnPzODneZwxGTLdjBziSPC"}

])

db.Macchina.insert([
                            {"_id":0, "Modello":"mAYRcqdqNTZwY", "Sensore":93737, "Peso":36, "MaxISO":87, "_id_Marca":1},
                            {"_id":1, "Modello":"rMnAcMbJCvIVFlzMjGIAgNauKVFKEjYmlGVR", "Sensore":90534, "Peso":21, "MaxISO":382, "_id_Marca":2},
                            {"_id":2, "Modello":"hMpxnsxiZq", "Sensore":19840, "Peso":62, "MaxISO":226, "_id_Marca":1},
                            {"_id":3, "Modello":"EHjdFktExhxclIUcQDWhN", "Sensore":89249, "Peso":18, "MaxISO":440, "_id_Marca":2},
                            {"_id":4, "Modello":"WRKJsVXdFjvQlqdJtjpGyDTslqtrjHAhjQrpuhfPXYdt", "Sensore":37330, "Peso":15, "MaxISO":194, "_id_Marca":3}

])

db.Obiettivo.insert([
                            {"_id":0, "Modello":"PIKcAiWNVAzwkfmJcwkFFTvBhYvmyMmTkqhBaMIGDhJxbRUfi", "OIS":80037, "AF":0, "Zoom":0, "_id_Marca":1},
                            {"_id":1, "Modello":"elsqSrUCqpPmvwtNgbRkgHkW", "OIS":94480, "AF":0, "Zoom":1, "_id_Marca":1},
                            {"_id":2, "Modello":"QRuGmtIPMoXTRx", "OIS":42954, "AF":0, "Zoom":1, "_id_Marca":2},
                            {"_id":3, "Modello":"UXaWwSyYeyOeZaeTHcBIyGihFtVZo", "OIS":14570, "AF":1, "Zoom":1, "_id_Marca":2},
                            {"_id":4, "Modello":"eIMWIYZXpxTHTQutPzfTKlVhJmugrAJJEpg", "OIS":68348, "AF":0, "Zoom":0, "_id_Marca":4}
])

db.Compatta.insert([
                            {"_id_Macchina":1, "_id_Obiettivo":1, "ZoomDigitale":1, "StabilizzazioneDigitale":1},
                            {"_id_Macchina":2, "_id_Obiettivo":2, "ZoomDigitale":0, "StabilizzazioneDigitale":1}
])

db.Reflex.insert([
                            {"_id_Macchina":0, "MotoreAF":1},
                            {"_id_Macchina":3, "MotoreAF":1},
                            {"_id_Macchina":4, "MotoreAF":1}
])

db.Monta.insert([
                            {"_id_Macchina":0, "_id_Obiettivo":1, "Attacco":"CULnl"},
                            {"_id_Macchina":0, "_id_Obiettivo":2, "Attacco":"Xm"},
                            {"_id_Macchina":3, "_id_Obiettivo":2, "Attacco":"KIjd"},
                            {"_id_Macchina":4, "_id_Obiettivo":3, "Attacco":"FfIT"}
])

db.Fotografia.insert([
                            {"_id":0, "Descrizione":"JTkQKrhXObLopnJqgbYslIwEwUPdte", "Data":"2008-4-14", "_id_Album":3, "_id_Categoria":1, "_id_Luogo":2, "_id_Macchina":0, "_id_Obiettivo":1, "LunghezzaFocale":1.7, "Angolo":58, "Diaframma":2.5, "Esposizione":-284, "ISO":1673, "Risoluzione":2175},
                            {"_id":1, "Descrizione":"zIoufGfZoeQUdXjNkycOthyYijNeBn", "Data":"2006-2-13", "_id_Album":2, "_id_Categoria":1, "_id_Luogo":3, "_id_Macchina":0, "_id_Obiettivo":2, "LunghezzaFocale":2.8, "Angolo":73, "Diaframma":2.9, "Esposizione":-754, "ISO":2610, "Risoluzione":3085},
                            {"_id":2, "Descrizione":"SUgnnWTcmwDtPTXjBXVwClhCQKjoyI", "Data":"1989-3-25", "_id_Album":2, "_id_Categoria":1, "_id_Luogo":4, "_id_Macchina":3, "_id_Obiettivo":2, "LunghezzaFocale":1.5, "Angolo":7, "Diaframma":2.6, "Esposizione":-312, "ISO":979, "Risoluzione":1704},
                            {"_id":3, "Descrizione":"dmWulFCVQULHjmKHfNbvceMFbmeQe", "Data":"2007-9-24", "_id_Album":3, "_id_Categoria":2, "_id_Luogo":1, "_id_Macchina":4, "_id_Obiettivo":3, "LunghezzaFocale":2.5, "Angolo":108, "Diaframma":2.4, "Esposizione":-28, "ISO":4740, "Risoluzione":2040},
                            {"_id":4, "Descrizione":"ODyoxMZlNlHWOAoiWBXAOwowdlaWy", "Data":"2008-9-3", "_id_Album":1, "_id_Categoria":2, "_id_Luogo":1, "_id_Macchina":2, "_id_Obiettivo":2, "LunghezzaFocale":1.6, "Angolo":77, "Diaframma":1.8, "Esposizione":-255, "ISO":3925, "Risoluzione":508}
])

db.Voto.insert([
                            {"_id":0, "_id_Utente":3, "_id_Foto":1, "Voto":10, "Descrizione":"gZHaSAyVevcUNGvkqmgsUKoYhdtTkCgDzSt"},
                            {"_id":1, "_id_Utente":4, "_id_Foto":1, "Voto":10, "Descrizione":"zZFMBCFPxyvGrIEiAryAvBtvVZLyIjlTTckfK"},
                            {"_id":2, "_id_Utente":2, "_id_Foto":2, "Voto":3, "Descrizione":"iQjQuBkPNJzulNEWwRoVXLNiPBdlNsrQwOEUgbHTCQDaTBiyZ"},
                            {"_id":3, "_id_Utente":1, "_id_Foto":0, "Voto":1, "Descrizione":"tkeTwTKJkwDaeIHUkJzuPkjJTbgYSJrV"},
                            {"_id":4, "_id_Utente":0, "_id_Foto":3, "Voto":1, "Descrizione":"yKQeDCbsAezSLgtsDMyLUNCEc"}
])
