#Dir["classes/*.rb"].each {|file| require file }
#Dir["modules/*.rb"].each {|file| require file }
require_relative './classes/numero_uno'	
require_relative './classes/numero_due'	
require_relative './classes/numero_tre'	
require_relative './modules/game_default'	
require_relative './modules/game'	

avviaApp = Game.new

avviaApp.start_gioco