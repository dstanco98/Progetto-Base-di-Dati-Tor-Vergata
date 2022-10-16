/* -Inserimenti di prova- */

insert into PROVINCIA (Nome,Sigla) value ("Viterbo", "VT");
insert into PROVINCIA (Nome,Sigla) value ("Roma", "Rm");
insert into PROVINCIA (Nome,Sigla) value ("Milano", "MI");

insert into CITTA (Nome, ID_Provincia) value ("Montefiascone", 1);
insert into CITTA (Nome, ID_Provincia) value ("Viterbo", 1);
insert into CITTA (Nome, ID_Provincia) value ("Roma", 2);
insert into CITTA (Nome, ID_Provincia) value ("Tivoli", 2);
insert into CITTA (Nome, ID_Provincia) value ("Legnano", 3);

insert into LUOGO (Via, ID_Citta) value ("AB", 1);
insert into LUOGO (Via, ID_Citta) value ("CA", 2);
insert into LUOGO (Via, ID_Citta) value ("BB", 3);
insert into LUOGO (Via, ID_Citta) value ("AB", 4);
insert into LUOGO (Via, ID_Citta) value ("BB", 5);

insert into STUDIO (Nome) value ("StudioVT");
insert into STUDIO (Nome) value ("StudioRM1");
insert into STUDIO (Nome) value ("StudioRM2");

insert into RISIEDE (ID_Studio, ID_Luogo, NumeroCivico) value (1, 1, 21);
insert into RISIEDE (ID_Studio, ID_Luogo, NumeroCivico) value (1, 2, 3);
insert into RISIEDE (ID_Studio, ID_Luogo, NumeroCivico) value (2, 3, 4);
insert into RISIEDE (ID_Studio, ID_Luogo, NumeroCivico) value (3, 4, 65);
insert into RISIEDE (ID_Studio, ID_Luogo, NumeroCivico) value (2, 5, 121);

insert into UTENTE (Nome, Cognome, Data, Email, Cellulare, ID_Studio) value ("Donato",  "Stanco",  '1998-06-26', "dstanco@hotmail.it",    "3468028262", 1);
insert into UTENTE (Nome, Cognome, Data, Email, Cellulare, ID_Studio) value ("Marco",   "Rossi",   '1999-04-29', "marcoro99@gmail.com",   "3353498763", 1);
insert into UTENTE (Nome, Cognome, Data, Email, Cellulare, ID_Studio) value ("Giacomo", "Verdi",   '1992-11-12', "giacomove92@gmail.com", "3319303549", 2);
insert into UTENTE (Nome, Cognome, Data, Email, Cellulare, ID_Studio) value ("Matteo",  "Gialli",  '1993-09-02', "matteogi93@gmail.com",  "3330382384", 2);
insert into UTENTE (Nome, Cognome, Data, Email, Cellulare, ID_Studio) value ("Luca",    "Neri",    '1996-02-24', "lucane96@gmail.com",    "3339412345", 3);

insert into ALBUM (NomeAlbum, Data, ID_Utente) value ("Paesaggi", '2019-02-22', 1);
insert into ALBUM (NomeAlbum, Data, ID_Utente) value ("Animali",  '2019-04-02', 1);
insert into ALBUM (NomeAlbum, Data, ID_Utente) value ("Ritratti", '2018-02-22', 2);
insert into ALBUM (NomeAlbum, Data, ID_Utente) value ("Citta",    '2019-06-10', 2);
insert into ALBUM (NomeAlbum, Data, ID_Utente) value ("Ritratti", '2019-01-23', 3);
insert into ALBUM (NomeAlbum, Data, ID_Utente) value ("Edifici",  '2019-11-01', 4);
insert into ALBUM (NomeAlbum, Data, ID_Utente) value ("Paesaggi", '2019-12-22', 5);

insert into CATEGORIA (Nome, Descrizione) value ("Natura", "abcd");
insert into CATEGORIA (Nome, Descrizione) value ("Persone", "efgh");
insert into CATEGORIA (Nome, Descrizione) value ("Oggetti", "ilmn");

insert into MARCA (Nome, Stato) value ("Nikon", "Giappone");
insert into MARCA (Nome, Stato) value ("Sony", "Giappone");
insert into MARCA (Nome, Stato) value ("Leica", "Germania");

insert into MACCHINA (Modello, Sensore, Peso, MaxISO, ID_Marca) value ("ni12", 43, 280, 6400, 1);
insert into MACCHINA (Modello, Sensore, Peso, MaxISO, ID_Marca) value ("ni34", 28, 230, 5000, 1);
insert into MACCHINA (Modello, Sensore, Peso, MaxISO, ID_Marca) value ("sn07", 43, 300, 4000, 2);
insert into MACCHINA (Modello, Sensore, Peso, MaxISO, ID_Marca) value ("sn12", 21, 200, 5000, 2);
insert into MACCHINA (Modello, Sensore, Peso, MaxISO, ID_Marca) value ("Le32", 54, 400, 6400, 3);

insert into OBIETTIVO (Modello, OIS, AF, Zoom, ID_Marca) value ("Obiettivo1", 0, 1, 50,  1);
insert into OBIETTIVO (Modello, OIS, AF, Zoom, ID_Marca) value ("Obiettivo2", 1, 1, 100, 2);
insert into OBIETTIVO (Modello, OIS, AF, Zoom, ID_Marca) value ("Obiettivo3", 1, 0, 100, 3);
insert into OBIETTIVO (Modello, OIS, AF, Zoom, ID_Marca) value ("Obiettivo4", 0, 1, 50,  2);
insert into OBIETTIVO (Modello, OIS, AF, Zoom, ID_Marca) value ("Obiettivo5", 1, 1, 100, 1);

insert into COMPATTA (ID_Macchina, ID_Obiettivo, ZoomDigitale, StabilizzazioneDigitale) value (3, 2, 100, 1);
insert into COMPATTA (ID_Macchina, ID_Obiettivo, ZoomDigitale, StabilizzazioneDigitale) value (5, 3, 100, 0);

insert into REFLEX (ID_Macchina, MotoreAF) value (1, 0);
insert into REFLEX (ID_Macchina, MotoreAF) value (2, 1);
insert into REFLEX (ID_Macchina, MotoreAF) value (4, 1);

insert into MONTA (ID_Macchina, ID_Obiettivo, Attacco) value (1, 1, "BF");
insert into MONTA (ID_Macchina, ID_Obiettivo, Attacco) value (1, 5, "BF");
insert into MONTA (ID_Macchina, ID_Obiettivo, Attacco) value (2, 1, "BF");
insert into MONTA (ID_Macchina, ID_Obiettivo, Attacco) value (2, 5, "BF");
insert into MONTA (ID_Macchina, ID_Obiettivo, Attacco) value (4, 2, "CS");

insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("a", '2019-01-01', 1, 1, 1, 1, 5, 52, 70,  2.0, 10, 200,  1080);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("b", '2019-03-02', 2, 1, 2, 1, 1, 44, 110, 2.5, 80, 1000, 1440);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("c", '2019-02-03', 2, 2, 3, 3, 4, 48, 24,  2.3, 80, 1200, 720);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("d", '2019-06-04', 3, 3, 1, 2, 1, 44, 70,  2.2, 40, 1300, 1440);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("e", '2019-06-04', 4, 3, 4, 2, 5, 52, 120, 2.1, 30, 800,  1080);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("f", '2019-04-05', 4, 3, 5, 2, 5, 52, 16,  1.8, 20, 200,  1440);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("g", '2019-01-06', 5, 1, 1, 4, 2, 72, 70,  1.7, 40, 100,  1080);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("h", '2019-01-06', 5, 2, 2, 4, 2, 72, 70,  1.4, 60, 300,  720);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("i", '2019-08-07', 6, 2, 5, 5, 3, 52, 120, 1.9, 90, 700,  1440);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("l", '2019-08-07', 6, 2, 3, 5, 3, 52, 180, 1.8, 10, 1200, 720);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("m", '2019-11-08', 7, 2, 1, 3, 4, 48, 44,  2.2, 60, 2200, 1440);
insert into FOTOGRAFIA (Descrizione, Data, ID_Album, ID_Categoria, ID_Luogo, ID_Macchina, ID_Obiettivo, LunghezzaFocale, Angolo, Diaframma, Esposizione, ISO, Risoluzione) value ("n", '2019-12-09', 7, 1, 3, 2, 5, 52, 70,  2.0, 30, 2600, 1440);

insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (1, 1, 8,   "abcdefg");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (1, 5, 6,   "jfhldsdg");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (1, 6, 8,   "abcdefg");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (1, 7, 7,   "jfhldsdg");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (1, 8, 5,   "abcdefg");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (1, 9, 6,   "jfhldsdg");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (2, 10, 7,  "gfhgfhsfhf");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (2, 11, 5,  "dfhfdffd");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (2, 10, 10, "dfhfdffd");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (2, 8, 7,   "gfhgfhsfhf");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (3, 1, 8,   "fdfdhfhf");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (3, 2, 7,   "dfhhghsfreh");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (3, 3, 8,   "fdfdhfhf");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (3, 6, 7,   "dfhhghsfreh");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (4, 7, 6,   "bnbnhytery");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (4, 8, 5,   "cuyowcieui");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (4, 1, 6,   "bnbnhytery");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (4, 2, 8,   "cuyowcieui");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (5, 1, 9,   "dey7398hce");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (5, 5, 7,   "cbuebcuooe");
insert into VOTO (ID_Utente, ID_Foto, Voto, Descrizione) value (5, 6, 4,   "eqvuicoie");
