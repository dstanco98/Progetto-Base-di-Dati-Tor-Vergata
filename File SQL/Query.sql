/* -Query- */

/* 1-Mostrare il numero di foto per ogni categoria */
SELECT Categoria.Nome, COUNT(*) as NumeroFoto
FROM FOTOGRAFIA, CATEGORIA
WHERE FOTOGRAFIA.ID_Categoria = CATEGORIA.ID
GROUP BY CATEGORIA.Nome;

/* 2-Mostrare il numero di utenti registrati raggruppandoli per anno di nascita */
SELECT YEAR(UTENTE.Data) as Anno, COUNT(UTENTE.ID) AS NumeroUtenti
FROM UTENTE
GROUP BY YEAR(UTENTE.Data);

/* 3-Mostrare gli utenti nati dopo il 1996 */
SELECT UTENTE.ID, UTENTE.Nome, UTENTE.Cognome, UTENTE.Data
FROM UTENTE
WHERE YEAR(UTENTE.Data) >= 1995;

/* 4-Mostrare gli utenti che lavorano per gli studi che hanno almeno una sede nella provincia di Roma */
SELECT UTENTE.ID, UTENTE.Nome, UTENTE.Cognome
FROM UTENTE, STUDIO, RISIEDE, LUOGO, CITTA, PROVINCIA
WHERE UTENTE.ID_Studio = STUDIO.ID and RISIEDE.ID_Studio = STUDIO.ID and RISIEDE.ID_Luogo = LUOGO.ID and LUOGO.ID_Citta = CITTA.ID and CITTA.ID_Provincia = PROVINCIA.ID and PROVINCIA.Nome = "Roma";

/* 5-Mostrare il numero di studi presenti nella provincia di Roma*/
SELECT COUNT(*) as NumeroStudiRoma
FROM RISIEDE, LUOGO, CITTA, PROVINCIA
WHERE RISIEDE.ID_Luogo = LUOGO.ID and LUOGO.ID_Citta = CITTA.ID and CITTA.ID_Provincia = PROVINCIA.ID and PROVINCIA.Nome = "Roma";

/* 6-Mostrare il numero di studi presenti in ciascuna provincia */
SELECT PROVINCIA.Nome, COUNT(*) as NumeroStudi
FROM RISIEDE, LUOGO, CITTA, PROVINCIA
WHERE  RISIEDE.ID_Luogo = LUOGO.ID and LUOGO.ID_Citta = CITTA.ID and CITTA.ID_Provincia = PROVINCIA.ID
GROUP BY PROVINCIA.ID;

/* 7-Mostrare il numero di album pubblicati da ogni utente in ordine decrescente */
SELECT UTENTE.ID, UTENTE.Nome, UTENTE.Cognome, COUNT(ALBUM.ID) as NumeroAlbum
FROM ALBUM, UTENTE
WHERE ALBUM.ID_Utente = UTENTE.ID
GROUP BY ALBUM.ID_Utente
ORDER BY COUNT(ALBUM.ID) DESC;

/* 8-Mostare il numero di fotografie scattate da ciascuna macchina con il TOTALE finale */
SELECT COALESCE(FOTOGRAFIA.ID_Macchina, 'TOTALE') as ID_Macchina,  MARCA.Nome as Marca, MACCHINA.Modello as Modello, COUNT(*) as NumFoto
FROM FOTOGRAFIA, MACCHINA, MARCA
WHERE FOTOGRAFIA.ID_Macchina = MACCHINA.ID and MACCHINA.ID_Marca = MARCA.ID
GROUP BY FOTOGRAFIA.ID_Macchina WITH ROLLUP;

/* 9-Stampare gli utenti che hanno il numero di cellulare che inizia per 346 */
SELECT UTENTE.ID, UTENTE.Nome, UTENTE.Cognome, UTENTE.Cellulare
FROM UTENTE
WHERE UTENTE.Cellulare like "346%";

/* 10-Per ogni utente fare una media dei voti delle proprie foto */
SELECT UTENTE.ID, UTENTE.Nome, UTENTE.Cognome, AVG(VOTO.Voto) as MediaVoti
FROM UTENTE, VOTO
WHERE VOTO.ID_Utente = UTENTE.ID
GROUP BY UTENTE.ID
ORDER BY AVG(VOTO.Voto);

/* 11-Stampare l'album con la media voti minore */
SELECT ALBUM.ID as ID_Album, ALBUM.NomeAlbum, UTENTE.ID as ID_Utente, UTENTE.Nome, UTENTE.Cognome, AVG(VOTO.Voto) as MediaVoti
FROM UTENTE, ALBUM, VOTO, FOTOGRAFIA
WHERE VOTO.ID_Foto = FOTOGRAFIA.ID and FOTOGRAFIA.ID_Album = ALBUM.ID and ALBUM.ID_Utente = UTENTE.ID
GROUP BY FOTOGRAFIA.ID_Album
ORDER BY AVG(VOTO.Voto) LIMIT 1;

/* 12-Stampare l'album con più voti */
SELECT ALBUM.ID as ID_Album, ALBUM.NomeAlbum, UTENTE.ID as ID_Utente, UTENTE.Nome, UTENTE.Cognome, COUNT(VOTO.Voto) as MediaVoti
FROM UTENTE, ALBUM, VOTO, FOTOGRAFIA
WHERE VOTO.ID_Foto = FOTOGRAFIA.ID and FOTOGRAFIA.ID_Album = ALBUM.ID and ALBUM.ID_Utente = UTENTE.ID
GROUP BY FOTOGRAFIA.ID_Album
ORDER BY COUNT(*) DESC LIMIT 1;

/* 13-Stampare il modello di macchina più usato */
SELECT FOTOGRAFIA.ID_Macchina, MARCA.Nome as Marca, MACCHINA.Modello as Modello, COUNT(*) as NumFoto
FROM FOTOGRAFIA, MACCHINA, MARCA
WHERE FOTOGRAFIA.ID_Macchina = MACCHINA.ID and Macchina.ID_Marca = MARCA.ID
GROUP BY FOTOGRAFIA.ID_Macchina
ORDER BY COUNT(*) DESC LIMIT 1;

/* 14-Stampare le macchine compatibili solo con l'Obiettivo5*/
SELECT MONTA.Attacco, MACCHINA.Modello, MARCA.nome as Marca
FROM MONTA, MACCHINA, MARCA, OBIETTIVO
WHERE MACCHINA.ID_Marca = MARCA.ID and MONTA.ID_Macchina = MACCHINA.ID and MONTA.ID_Obiettivo = OBIETTIVO.ID and OBIETTIVO.Modello = "Obiettivo5";

/* 15-Trovare gli utenti che hanno pubblicato un album dopo il giorno in cui l'utente con ID=1 ha pubblicato l'album Animali*/
SELECT UTENTE.ID as ID_Utente, UTENTE.Nome, UTENTE.Cognome, ALBUM.ID as ID_Album, ALBUM.NomeAlbum, ALBUM.Data
FROM UTENTE, ALBUM, ALBUM as ALB
WHERE ALBUM.ID_Utente = UTENTE.ID and ALBUM.Data > ALB.Data and ALB.NomeAlbum = "Animali" and ALB.ID_Utente = 1;

/* 16-Trovare gli utenti che hanno messo lo stesso voto dell'utente 1 alla foto con ID=7 */
SELECT UTENTE.ID as ID_Utente, UTENTE.Nome, UTENTE.Cognome, VOTO.Voto
FROM UTENTE, VOTO, VOTO as VT
WHERE VOTO.ID_Utente = UTENTE.ID and VOTO.ID_Foto = VT.ID_Foto and VOTO.Voto = VT.Voto and VT.ID_Utente = 1 and VT.ID_Foto = 8;

/* 17-Mostrare tutte le foto, e da chi sono state scattate, che hanno un angolo superiore alla foto con ID=2 */
SELECT UTENTE.ID as ID_Utente, UTENTE.Nome, UTENTE.Cognome, FOTOGRAFIA.ID as ID_Foto, ALBUM.NomeAlbum, FOTOGRAFIA.Angolo
FROM UTENTE, ALBUM, FOTOGRAFIA, FOTOGRAFIA as FO
WHERE ALBUM.ID_Utente = UTENTE.ID and FOTOGRAFIA.ID_Album = ALBUM.ID and FOTOGRAFIA.Angolo > FO.Angolo and FO.ID=2;

/* 18-Mostrare tutte le foto pubblicate tra il 2019-06-01 e il 2019-09-01 e da chi */
SELECT UTENTE.Nome, UTENTE.Cognome, ALBUM.NomeAlbum, FOTOGRAFIA.ID as ID_Foto, FOTOGRAFIA.Data
FROM FOTOGRAFIA, ALBUM, UTENTE, FOTOGRAFIA as FO
WHERE ALBUM.ID_Utente = UTENTE.ID and FOTOGRAFIA.ID_Album = ALBUM.ID and FOTOGRAFIA.ID = FO.ID and FO.Data between '2019-06-01' and '2019-09-01';

/* 19-Mostrare tutte le foto pubblicate nel mese di Giugno di qualsiasi anno*/
SELECT UTENTE.ID as ID_Utente, UTENTE.Nome, UTENTE.Cognome, ALBUM.NomeAlbum, FOTOGRAFIA.ID as ID_Foto, FOTOGRAFIA.data
FROM FOTOGRAFIA, ALBUM, UTENTE
WHERE FOTOGRAFIA.ID_Album = ALBUM.ID and ALBUM.ID_Utente = UTENTE.ID and MONTH(FOTOGRAFIA.Data) = 6;

/* 20-Stampare tutti gli utenti che hanno scattato foto nelle stesse Citta in cui ha scattato l'utente Donato Stanco */
SELECT DISTINCT UTENTE1.ID as ID_Utente, UTENTE1.Nome, UTENTE1.Cognome, CITTA.Nome
FROM UTENTE, ALBUM, FOTOGRAFIA, LUOGO, CITTA, UTENTE as UTENTE1, ALBUM as ALBUM1, FOTOGRAFIA as FOTOGRAFIA1, LUOGO as LUOGO1, CITTA as CITTA1
WHERE ALBUM1.ID_Utente = UTENTE1.ID and FOTOGRAFIA1.ID_Album = ALBUM1.ID and FOTOGRAFIA1.ID_Luogo = LUOGO1.ID and
			LUOGO1.ID_Citta = CITTA.ID and ALBUM.ID_Utente = UTENTE.ID and FOTOGRAFIA.ID_Album = ALBUM.ID and FOTOGRAFIA.ID_Luogo = LUOGO.ID and
			LUOGO.ID_Citta = CITTA.ID and UTENTE.Nome = "Donato" and UTENTE.Cognome = "Stanco";

/* 21-Stampare l'obiettivo usato più volte insieme alla macchina ni34 */
SELECT FOTOGRAFIA.ID_Obiettivo, OBIETTIVO.Modello as ModelloObiettivo,  COUNT(FOTOGRAFIA.ID_Obiettivo) as UsatoNUM, MARCA.Nome as Marca
FROM FOTOGRAFIA, MACCHINA, OBIETTIVO, MARCA
WHERE OBIETTIVO.ID_Marca = MARCA.ID and FOTOGRAFIA.ID_Obiettivo = OBIETTIVO.ID and
      FOTOGRAFIA.ID_Macchina = MACCHINA.ID and MACCHINA.Modello = "ni34"
GROUP BY FOTOGRAFIA.ID_Obiettivo
ORDER BY COUNT(FOTOGRAFIA.ID_Obiettivo) DESC LIMIT 1;

/* 22-Stampare la macchina più usata nella provincia di Roma */
SELECT FOTOGRAFIA.ID_Macchina, MACCHINA.Modello as ModelloMacchina, MARCA.Nome as NomeMarca, COUNT(FOTOGRAFIA.ID_Macchina) as UsatoNum
FROM FOTOGRAFIA, MACCHINA, MARCA, LUOGO, CITTA, PROVINCIA
WHERE MACCHINA.ID_Marca = MARCA.ID and FOTOGRAFIA.ID_Macchina = MACCHINA.ID and FOTOGRAFIA.ID_Luogo = LUOGO.ID
			and LUOGO.ID_Citta = CITTA.ID and CITTA.ID_Provincia = PROVINCIA.ID and PROVINCIA.Nome = "Roma"
GROUP BY FOTOGRAFIA.ID_Macchina
ORDER BY COUNT(FOTOGRAFIA.ID_Macchina) DESC LIMIT 1;

/* 23-Visualizzare tutti i commenti di una determinata foto, ad esempio quella con ID=2 */
SELECT VOTO.Voto, VOTO.Descrizione, UTENTE.Nome, UTENTE.Cognome
FROM VOTO, UTENTE
WHERE VOTO.ID_Utente = UTENTE.ID and VOTO.ID_Foto = 2;

/* 24-Visualizzare quanti modelli di macchine produce ogni paese */
SELECT MARCA.Stato, COUNT(*) as NumModelli
FROM MARCA, MACCHINA
WHERE MACCHINA.ID_Marca = MARCA.ID
GROUP BY MARCA.Stato;
