require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require '.././classes/numero_uno'
require '.././classes/numero_due'
require '.././classes/numero_tre'
require '.././modules/game'

describe Game do
	let(:baroselloCol) { "BaroSello".blue }
	let(:baroCol) { "Baro".green }
	let(:selloCol) { "Sello".red }
	let(:nardoCol) { "Nardo".yellow }
	let(:game_instance) { Game.new }
	
	it "per lo step1 stampa la stringa 0, 1, 2, Baro, 4, Sello, Baro, 7, 8, Baro, Sello, ..., BaroSello, 91, 92, Baro, 94, Sello, Baro, 97, 98, Baro, Sello" do
		game_instance.calcola1.must_equal("0, 1, 2, Baro, 4, Sello, Baro, 7, 8, Baro, Sello, 11, Baro, 13, 14, BaroSello, 16, 17, Baro, 19, Sello, Baro, 22, 23, Baro, Sello, 26, Baro, 28, 29, BaroSello, 31, 32, Baro, 34, Sello, Baro, 37, 38, Baro, Sello, 41, Baro, 43, 44, BaroSello, 46, 47, Baro, 49, Sello, Baro, 52, 53, Baro, Sello, 56, Baro, 58, 59, BaroSello, 61, 62, Baro, 64, Sello, Baro, 67, 68, Baro, Sello, 71, Baro, 73, 74, BaroSello, 76, 77, Baro, 79, Sello, Baro, 82, 83, Baro, Sello, 86, Baro, 88, 89, BaroSello, 91, 92, Baro, 94, Sello, Baro, 97, 98, Baro, Sello")
	end

	it "per lo step2 stampa la stringa 0, 1, 2, Baro, 4, Sello, Baro, Nardo, 8, Baro, Sello, ..., BaroSello, Nardo, 92, Baro, 94, Sello, Baro, 97, Nardo, Baro, Sello" do
		game_instance.calcola2.must_equal("0, 1, 2, Baro, 4, Sello, Baro, Nardo, 8, Baro, Sello, 11, Baro, 13, Nardo, BaroSello, 16, 17, Baro, 19, Sello, Nardo, 22, 23, Baro, Sello, 26, Baro, Nardo, 29, BaroSello, 31, 32, Baro, 34, Nardo, Baro, 37, 38, Baro, Sello, 41, Nardo, 43, 44, BaroSello, 46, 47, Baro, Nardo, Sello, Baro, 52, 53, Baro, Sello, Nardo, Baro, 58, 59, BaroSello, 61, 62, Nardo, 64, Sello, Baro, 67, 68, Baro, Nardo, 71, Baro, 73, 74, BaroSello, 76, Nardo, Baro, 79, Sello, Baro, 82, 83, Nardo, Sello, 86, Baro, 88, 89, BaroSello, Nardo, 92, Baro, 94, Sello, Baro, 97, Nardo, Baro, Sello")
	end

	it "per lo step3 stampa la stringa colorando le parole 0, 1, 2, Baro, 4, Sello, Baro, Nardo, 8, Baro, Sello, ..., BaroSello, Nardo, 92, Baro, 94, Sello, Baro, 97, Nardo, Baro, Sello" do
		string_return = "0, 1, 2, #{baroCol}, 4, #{selloCol}, #{baroCol}, #{nardoCol}, 8, #{baroCol}, #{selloCol}, 11, #{baroCol}, 13, #{nardoCol}, #{baroselloCol}, 16, 17, #{baroCol}, 19, #{selloCol}, #{baroCol}, 22, 23, #{baroCol}, #{selloCol}, 26, #{baroCol}, #{nardoCol}, 29, #{baroselloCol}, 31, 32, #{baroCol}, 34, #{selloCol}, #{baroCol}, 37, 38, #{baroCol}, #{selloCol}, 41, #{baroCol}, 43, 44, #{baroselloCol}, 46, 47, #{baroCol}, #{nardoCol}, #{selloCol}, #{baroCol}, 52, 53, #{baroCol}, #{selloCol}, #{nardoCol}, #{baroCol}, 58, 59, #{baroselloCol}, 61, 62, #{baroCol}, 64, #{selloCol}, #{baroCol}, 67, 68, #{baroCol}, #{selloCol}, 71, #{baroCol}, 73, 74, #{baroselloCol}, 76, #{nardoCol}, #{baroCol}, 79, #{selloCol}, #{baroCol}, 82, 83, #{baroCol}, #{selloCol}, 86, #{baroCol}, 88, 89, #{baroselloCol}, #{nardoCol}, 92, #{baroCol}, 94, #{selloCol}, #{baroCol}, 97, #{nardoCol}, #{baroCol}, #{selloCol}"
		game_instance.calcola3.must_equal(string_return)
	end

	it "per lo step4 stampa la stringa colorando le parole di blu BaroSello, BaroSello, BaroSello, BaroSello, BaroSello, BaroSello" do
		string_return = "#{baroselloCol}, #{baroselloCol}, #{baroselloCol}, #{baroselloCol}, #{baroselloCol}, #{baroselloCol}"
		game_instance.calcola4.must_equal(string_return)
	end
	
	it "per lo step5 stampa a console Sello, Sello, BaroSello, Sello, Sello, BaroSello, Nardo, Sello, BaroSello, Sello, Sello, BaroSello, Sello, Nardo, BaroSello, Sello, Sello, BaroSello, Sello, Sello" do
		string_return = "Sello, Sello, BaroSello, Sello, Sello, BaroSello, Nardo, Sello, BaroSello, Sello, Sello, BaroSello, Sello, Nardo, BaroSello, Sello, Sello, BaroSello, Sello, Sello"
		game_instance.calcola5[0].join(", ").must_equal(string_return)
	end

	it "per lo step5 crea un tweet Baro, Sello, Baro, Baro, Sello, Baro, Baro, Sello, Nardo, Baro, Sello, Baro, Baro, Nardo, Baro, Baro, Sello, Nardo, Baro, Sello, Baro, Baro," do
		string_return = "Baro, Sello, Baro, Baro, Sello, Baro, Baro, Sello, Nardo, Baro, Sello, Baro, Baro, Nardo, Baro, Baro, Sello, Nardo, Baro, Sello, Baro, Baro,"
		game_instance.calcola5[1].join(", ").slice(0,140).must_equal(string_return)
	end

end