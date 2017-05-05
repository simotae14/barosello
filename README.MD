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

=> un numero da 0 a 100
(0..100).to_a 
=> controllo il numero, se 
		- multiplo di 3 restituisco "Baro"
			% 3 == 0 i = Baro
		- multiplo di 5 restituisco "Sello"
			% 5 == 0 i = Sello
		- multiplo di 3 e 5 restituisco "BaroSello"
			% 3 == 0 && % 5 == 0
		- altrimenti restituisco il numero
Esempio output
0,1,2, Baro,4,Sello,Baro,7,8,Baro,Sello,11,Baro,13,14,BaroSello,16,17,Baro,...98, Baro, Sello



STEP 2
Se volessimo aggiungere una nuova feature? Se il numero è multiplo di 7, restituisci “Nardo”
=> controllo il numero, se
		- multiplo di 7 restituisco "Nardo"
			% 7 == 0 i = Nardo


STEP 3
Ok, se volessi stampare l’ output su console? E magari con colori diversi?
0,1,2, Baro,4,Sello,Baro,Nardo,8,Baro,Sello,11,Baro,13,Nardo,BaroSello,16,17,Baro,...98, Baro, Sello
=> stampa su console con colori diversi
Baro = verde
Sello = rosso
Nardo = giallo
BaroSello = blu

gem install colorize
puts "I am now red".red
puts "I am now blue".blue
puts "Testing".yellow


oppure
class String
def black;          "\e[30m#{self}\e[0m" end
def red;            "\e[31m#{self}\e[0m" end
def green;          "\e[32m#{self}\e[0m" end
def brown;          "\e[33m#{self}\e[0m" end
def blue;           "\e[34m#{self}\e[0m" end
def magenta;        "\e[35m#{self}\e[0m" end
def cyan;           "\e[36m#{self}\e[0m" end
def gray;           "\e[37m#{self}\e[0m" end

def bg_black;       "\e[40m#{self}\e[0m" end
def bg_red;         "\e[41m#{self}\e[0m" end
def bg_green;       "\e[42m#{self}\e[0m" end
def bg_brown;       "\e[43m#{self}\e[0m" end
def bg_blue;        "\e[44m#{self}\e[0m" end
def bg_magenta;     "\e[45m#{self}\e[0m" end
def bg_cyan;        "\e[46m#{self}\e[0m" end
def bg_gray;        "\e[47m#{self}\e[0m" end

def bold;           "\e[1m#{self}\e[22m" end
def italic;         "\e[3m#{self}\e[23m" end
def underline;      "\e[4m#{self}\e[24m" end
def blink;          "\e[5m#{self}\e[25m" end
def reverse_color;  "\e[7m#{self}\e[27m" end
end

puts "I'm back green".bg_green
puts "I'm red and back cyan".red.bg_cyan
puts "I'm bold and green and backround red".bold.green.bg_red



STEP 4
Ok, mi sono accorto che l’ output su console sta stampando troppa roba, se volessi stampare a console solo i BaroSello?
=> stampa a console solo i BaroSello
	select su solo i numeri % 3 e % 5

STEP 5
E se volessi stampare a console i Barosello, i Baro su un altro output (Es. twitter) e i Sello su entrambi gli output?
=> stampa a console dei Barosello
=> stampa dei Baro su twitter
https://github.com/sferik/twitter
http://www.blackbytes.info/2016/04/twitter-api-from-ruby-tutorial/
http://www.codebycodes.com/blog/2015/08/31/creating-a-simeple-twitter-bot-with-ruby
=> stampa dei Sello su entrambi gli output


