module GameDefault
	def inserire_numero
		begin
		  puts "Inserire un numero da 1 a 5 (compresi) in base allo step che vuoi vedere: "
			input = Integer(gets.chomp)
		rescue
		  puts "Perdona, inserisci un valore intero gentilmente:"
		  retry
		end until input.between?(1,5)  
		input
	end

	def start_gioco
		loop do 
		  scelta = inserire_numero
		  if(scelta == 1)
				puts "Il valore finale dello step 1 è: "
		  		stampa1
		  		puts
		  elsif (scelta == 2)
				puts "Il valore finale dello step 2 è: "
		  		stampa2
		  		puts
		  elsif (scelta == 3)
				puts "Il valore finale dello step 3 è: "
		  		stampa3
		  		puts
		  elsif (scelta == 4)
				puts "Il valore finale dello step 4 è: "
		  		stampa4
		  		puts
		  elsif (scelta == 5)
				puts "Il valore finale dello step 5 è: "
		  		stampa5
		  		puts
		  end
		  # some code here
		  puts "Se vuoi smettere di giocare premi 'Q'"
		  scelta = gets.chomp
		  puts
		  break if (scelta.upcase == 'Q')
		end 
	end
end