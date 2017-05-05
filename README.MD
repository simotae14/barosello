Test Developer
Si chiede al candidato di svolgere l’esercizio in base alle seguenti linee guida:
-  Creare un account Github e un repository nominato con il seguente pattern
<nome_test>_<data_svolgimento> ;
- Non fare riferimento al nome dell’azienda all’ interno della soluzione (Es. nome solution, classi, ecc);
- La soluzione deve essere quanto più possibile conforme ai principi di design del linguaggio scelto
(OOP, FP, ecc), ai Design pattern, deve essere svolta in modo incrementale e test oriented;
- Al termine dell’ esercizio inviare al Recruiter direttamente il link al repository Github.
Esercizio: BaroSello
Scrivere un algoritmo per modellare il seguente problema:

STEP 1
Dato un numero da 0 a 100
Se il numero è multiplo di 3, restituisci “Baro” Se è multiplo di 5, restituisci “Sello”
Se è multiplo di 3 e 5, restituisci “BaroSello”
Altrimenti restituisci il numero!
Questo è un esempio di output
0,1,2, Baro,4,Sello,Baro,7,8,Baro,Sello,11,Baro,13,14,BaroSello,16,17,Baro,...98, Baro, Sello

STEP 2
Se volessimo aggiungere una nuova feature? Se il numero è multiplo di 7, restituisci “Nardo”

STEP 3
Ok, se volessi stampare l’ output su console? E magari con colori diversi?
0,1,2, Baro,4,Sello,Baro,Nardo,8,Baro,Sello,11,Baro,13,Nardo,BaroSello,16,17,Baro,...98, Baro, Sello

STEP 4
Ok, mi sono accorto che l’ output su console sta stampando troppa roba, se volessi stampare a console solo i BaroSello?

STEP 5
E se volessi stampare a console i Barosello, i Baro su un altro output (Es. twitter) e i Sello su entrambi gli output?
=> stampa a console dei Barosello
=> stampa dei Baro su twitter


SOLUZIONE:
Ho svolto il compito in maniera incrementale, sviluppando uno step alla volta sino a giungere alla soluzione
finale che permette quale step verificare ciclicamente,
per avviare l'applicazione dalla root del progetto lanciare
	ruby main.rb

per lo step 5 che prevede anche la stampa su twitter ho utilizzato il seguente account non avenonde uno mio:
	https://twitter.com/design_potato

Per quanto riguarda i test ho utilizzato minitest spec, ho creato quelli individuali di ogni classes
per lanciarli dalla cartella test
	ruby numero_uno_spec.rb
	ruby numero_due_spec.rb
	ruby numero_tre_spec.rb
	ruby game_spec.rb
	