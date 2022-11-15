/* 1. Calcolare il codice dei programmatori che sono stati autori di almeno un programma scritto in Java dopo il 2000. */
 SELECT *
    FROM Programma
    INNER JOIN Autore ON Programma.id = Autore.id
    WHERE Programma.linguaggio ='Java' AND Programma.anno > 2000

/* 2. Calcolare il nome e la categoria dei programmatori che sono stati autori di almeno un programma scritto in un linguaggio diverso da Python, ordinando il risultato rispetto al nome dei programmatori. */
SELECT Programmatore.nome, Programmatore.categoria
    FROM Programmatore
    JOIN Autore AS A ON Programmatore.codice = A.codice
    JOIN Programma ON Programma.id = A.id
    WHERE Programma.linguaggio !='Python'
    ORDER BY Programmatore.nome
    
/* 3. Per ogni programmatore di categoria 10, calcolare il suo codice e l'anno in cui ha scritto il primo programma in un linguaggio diverso da Java. */c

/* 4. Calcolare le coppie dei codici di programmatori che sono stati coautori di almeno un programma scritto in Python. */

/* 5. Calcolare il codice ed il nome dei programmatori che hanno scritto solo programmi Java. */

/* 6. Per ogni programmatore e per ogni anno calcolare il numero di programmi scritti da quel programmatore in quell’anno, mostrando codice del programmatore, anno e numero di programmi scritti. */

/* 7. Per ogni linguaggio calcolare quanti sono in media gli autori dei programmi scritti in quel linguaggio.