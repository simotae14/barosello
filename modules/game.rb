require_relative './game_default.rb'

begin
  gem "twitter"
rescue LoadError
  system("gem install twitter")
  Gem.clear_paths
end
require 'twitter'

@@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "j4iHObADVXorJALoJVUWthmUh"
  config.consumer_secret     = "bMaQwxsjkib02k4GaGP0eLg3pSdmDBOnwUhC6TI0wmVEaSSvO9"
  config.access_token        = "810974376296411136-0mmjPqDoyBh786o1qyyF06BCEekNjlu"
  config.access_token_secret = "VQ17W4kktuY35INHAF12z05wiZOlZPPuT2I8U80r1rm1q"
end

class Game
	include GameDefault
	

	def stampa1
		range_list = (0..100).to_a
		range_list.map! do |i|
			i = NumeroUno.new(i).message
		end
		puts range_list.join ", "
	end
	def stampa2
		range_list = (0..100).to_a
		range_list.map! do |i|
			i = NumeroDue.new(i).message
		end
		puts range_list.join ", "
	end
	def stampa3
		range_list = (0..100).to_a
		range_list.map! do |i|
			i = NumeroTre.new(i).message
		end
		puts range_list.join ", "
	end

	def stampa4
		range_list = (0..100).to_a
		result = []
		range_list.each do |i|
			if(i != 0 && i % 3 == 0 && i % 5 == 0)
				i = NumeroTre.new(i).message
				result << i
			end
		end

		puts result.join ", "
	end

	def stampa5
		range_list = (0..100).to_a
		result_console = []
		result_twitter = []

		range_list.each do |i|
			if(i != 0 && i % 3 == 0 && i % 5 == 0)
				i = NumeroDue.new(i).message
				result_console << i
			elsif (i != 0 && i % 3 == 0)
  				i = NumeroDue.new(i).message
				result_twitter << i
	  		elsif (i != 0 && i % 5 == 0)
  				i = NumeroDue.new(i).message
				result_console << i
				result_twitter << i
			end
  	
		end

		puts result_console.join ", "
		puts "Controlla la restante stampa al seguente indirizzo, https://twitter.com/design_potato "
		@tweets = @@client.user_timeline[0..4] # For this demonstration lets keep the tweets limited to the first 5 available.
		if(@tweets)
			@@client.destroy_status(@tweets)
		end
		@@client.update(result_twitter.join(', ').slice(0,140))
	end
end
